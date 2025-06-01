void main() {

  Student student1 = Student("على", 20, 95);

  print("اسم الطالب: ${student1.name}");
  print("عمر الطالب: ${student1.age}");

  if(student1.grade >= 90){
    print("ممتاز");
  }
  else{
    print("غير ممتاز");
  }
}

class Student {
  late String name;
  late int age;
  late double grade;

  Student(this.name, this.age, this.grade){
  this.name = name;
  this.age = age;
  this.grade = grade;
  }
}