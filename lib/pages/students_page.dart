import 'package:flutter/material.dart';

import '../repository/student_repository.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({Key? key, required this.students}) : super(key: key);

  final List<Student> students;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Text('${students.length} Students'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) =>
                  StudentRow(student: students.elementAt(index)),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: students.length,
            ),
          ),
        ],
      ),
    );
  }
}

class StudentRow extends StatelessWidget {
  const StudentRow({
    Key? key,
    required this.student,
  }) : super(key: key);

  final Student student;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${student.name} ${student.surname}'),
      subtitle: Text('${student.age} age'),
      leading: student.gender == 'Erkek'
          ? const Icon(Icons.man_outlined)
          : const Icon(Icons.woman_outlined),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.favorite_border),
      ),
    );
  }
}
