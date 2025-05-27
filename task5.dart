void main (){
  List<String> name_student = ["Ahmed", "Ali", "Sayed"];
  
  name_student.addAll(["Helmy" , "Elbelehy" , "Raed"]);

  print(name_student);

  name_student.removeAt(2);

  print(name_student.length);

  print(name_student.contains("Helmy"));
}