import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:student_app/models/teacher.dart';

class DataService {
  final String baseUrl = "";

  Future<Teacher> getTeacher() async {
    final response = await http.get(Uri.parse('$baseUrl/teachers/1'));

    if (response.statusCode == 200) {
      return Teacher.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Teacher did not get ${response.statusCode}');
    }
  }
}

final dataServiceProvider = Provider((ref) => DataService());
