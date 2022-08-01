import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/teacher.dart';

class TeacherRepository extends ChangeNotifier {
  final List<Teacher> teachers = [
    Teacher('Faruk', 'Bilen', 38, 'Erkek'),
    Teacher('Semiha', 'Güneş', 29, 'Kadın'),
  ];
}

final teacherProvider = ChangeNotifierProvider((ref) => TeacherRepository());
