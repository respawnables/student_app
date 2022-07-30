class Student {
  String name;
  String surname;
  int age;
  String gender;

  Student(this.name, this.surname, this.age, this.gender);
}

class StudentRepository{

  final List<Student> students = [
    Student('Ali', 'Yılmaz', 18, 'Erkek'),
    Student('Ayşe', 'Çelik', 20, 'Kadın'),
  ];
}
