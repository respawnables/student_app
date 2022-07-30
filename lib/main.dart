import 'package:flutter/material.dart';

import 'package:student_app/pages/messages_page.dart';
import 'package:student_app/pages/students_page.dart';
import 'package:student_app/pages/teachers_page.dart';
import 'package:student_app/repository/message_repository.dart';
import 'package:student_app/repository/student_repository.dart';
import 'package:student_app/repository/teacher_repository.dart';

void main() {
  runApp(const StudentApp());
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StudentRepository studentRepository = StudentRepository();
  TeacherRepository teacherRepository = TeacherRepository();
  MessageRepository messageRepository = MessageRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                    builder: (context) => StudentsPage(
                      students: studentRepository.students,
                    ),
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
                    builder: (context) =>
                        TeachersPage(teachers: teacherRepository.students),
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
                    builder: (context) => MessagesPage(
                      messages: messageRepository.messages,
                    ),
                  ),
                );
              },
              child: Text('Messages Page (${messageRepository.messageCount})'),
            )
          ],
        ),
      ),
    );
  }
}
