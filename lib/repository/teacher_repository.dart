class Teacher {
  String name;
  String surname;
  int age;
  String gender;

  Teacher(this.name, this.surname, this.age, this.gender);
}

class TeacherRepository {
  final List<Teacher> students = [
    Teacher('Faruk', 'Bilen', 38, 'Erkek'),
    Teacher('Semiha', 'Güneş', 29, 'Kadın'),
  ];
}
