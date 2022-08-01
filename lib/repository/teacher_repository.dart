import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_app/service/data_service.dart';

import '../models/teacher.dart';

class TeacherRepository extends ChangeNotifier {
  final List<Teacher> teachers = [
    Teacher('Faruk', 'Bilen', 38, 'Erkek'),
    Teacher('Semiha', 'Güneş', 29, 'Kadın'),
  ];

  TeacherRepository(this.dataService);

  final DataService dataService;

  Future<void> getTeacher() async {
    final teacher = await dataService.getTeacher();
    teachers.add(teacher);
    notifyListeners();
  }
}

final teacherProvider = ChangeNotifierProvider(
    (ref) => TeacherRepository(ref.watch(dataServiceProvider)));
