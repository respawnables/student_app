import 'package:flutter/material.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students Page'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Text('10 Students'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: const Text('Ali'),
                leading: const Icon(Icons.person),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
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
