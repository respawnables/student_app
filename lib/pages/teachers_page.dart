import 'package:flutter/material.dart';

class TeachersPage extends StatelessWidget {
  const TeachersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teachers Page'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Text('10 Teachers'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => const ListTile(
                title: Text('Ali'),
                leading: Icon(Icons.person),
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 25,
            ),
          ),
        ],
      ),
    );
  }
}
