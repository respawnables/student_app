import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/student.dart';

class StudentRepository extends ChangeNotifier {
  final List<Student> students = [
    Student('Ali', 'Yılmaz', 18, 'Erkek'),
    Student('Ayşe', 'Çelik', 20, 'Kadın'),
  ];

  Set<Student> myLoves = {};

  void love(Student student, bool isLove) {
    isLove ? myLoves.add(student) : myLoves.remove(student);
    notifyListeners();
  }

  bool isLove(Student student) {
    return myLoves.contains(student);
  }
}

final studentProvider = ChangeNotifierProvider((ref) => StudentRepository());
