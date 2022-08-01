class Teacher {
  String name;
  String surname;
  int age;
  String gender;

  Teacher(this.name, this.surname, this.age, this.gender);

  Teacher.fromJson(dynamic json)
      : name = json['name'],
        surname = json['surname'],
        age = json['age'],
        gender = json['gender'];
}
