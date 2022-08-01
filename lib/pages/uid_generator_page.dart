import 'package:flutter/material.dart';
import 'package:nanoid/async.dart';

class UidGeneratorPage extends StatefulWidget {
  const UidGeneratorPage({Key? key}) : super(key: key);

  @override
  State<UidGeneratorPage> createState() => _UidGeneratorPageState();
}

class _UidGeneratorPageState extends State<UidGeneratorPage> {
  late var custom_id;
  bool isComplete = false;

  void generateId() async {
    custom_id = await nanoid(8);
    setState(() {
      isComplete = true;
    });
  }

  @override
  void initState() {
    generateId();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Id Generator'),
      ),
      body: Center(
        child: isComplete ? Text(custom_id) : const CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => generateId(),
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}
