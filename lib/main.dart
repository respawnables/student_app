import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:student_app/pages/messages_page.dart';
import 'package:student_app/pages/students_page.dart';
import 'package:student_app/pages/teachers_page.dart';
import 'package:student_app/pages/uid_generator_page.dart';
import 'package:student_app/repository/message_repository.dart';
import 'package:student_app/repository/student_repository.dart';

void main() {
  runApp(const ProviderScope(child: StudentApp()));
}

class StudentApp extends StatelessWidget {
  const StudentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Student Home Page'),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final studentRepository = ref.watch(studentProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StudentsPage(),
                  ),
                );
              },
              child: const Text('Students Page'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TeachersPage(),
                  ),
                );
              },
              child: const Text('Teachers Page'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MessagesPage(),
                  ),
                );
              },
              child:
                  Text('Messages Page (${ref.watch(newMessageCountProvider)})'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UidGeneratorPage()));
                },
                child: const Text('Uid Generate Page'))
          ],
        ),
      ),
    );
  }
}
