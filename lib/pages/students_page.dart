import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/student_repository.dart';

class StudentsPage extends ConsumerWidget {
  const StudentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final studentRepository = ref.watch(studentProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Text('${studentRepository.students.length} Students'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => StudentRow(
                  student: studentRepository.students.elementAt(index)),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: studentRepository.students.length,
            ),
          ),
        ],
      ),
    );
  }
}

class StudentRow extends ConsumerWidget {
  const StudentRow({
    Key? key,
    required this.student,
  }) : super(key: key);

  final Student student;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final studentRepository = ref.watch(studentProvider);
    bool isLove = studentRepository.isLove(student);
    return ListTile(
      title: Text('${student.name} ${student.surname}'),
      subtitle: Text('${student.age} age'),
      leading: student.gender == 'Erkek'
          ? const Icon(Icons.man_outlined)
          : const Icon(Icons.woman_outlined),
      trailing: IconButton(
        onPressed: () {
          ref.read(studentProvider).love(student, !isLove);
        },
        icon: const Icon(Icons.favorite_border),
      ),
    );
  }
}
