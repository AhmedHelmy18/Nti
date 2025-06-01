void main(){
  Animal animal1 = Animal("lion", "Simba", 5, true);

  print("اسم الحيوان: ${animal1.name}");
  print("اسم النوع: ${animal1.species}");
  if(animal1.isWild){
    print("تعامل بحذر");
  }
  else{
    print("لا تعامل بحذر");
  }
}
class Animal {
  String species;
  String name;
  int age;
  bool isWild;
  Animal(this.species,this.name, this.age, this.isWild);
}