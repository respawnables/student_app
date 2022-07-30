import 'package:flutter/material.dart';

import '../repository/teacher_repository.dart';

class TeachersPage extends StatelessWidget {
  const TeachersPage({Key? key, required this.teachers}) : super(key: key);

  final List<Teacher> teachers;

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
              itemBuilder: (context, index) =>
                  TeacherRow(teacher: teachers.elementAt(index)),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: teachers.length,
            ),
          ),
        ],
      ),
    );
  }
}

class TeacherRow extends StatelessWidget {
  const TeacherRow({
    Key? key,
    required this.teacher,
  }) : super(key: key);

  final Teacher teacher;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${teacher.name} ${teacher.surname}'),
      subtitle: Text('${teacher.age} age'),
      leading: teacher.gender == 'Erkek'
          ? const Icon(Icons.man_outlined)
          : const Icon(Icons.woman_outlined),
    );
  }
}
