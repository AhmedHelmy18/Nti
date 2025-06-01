void main() {

  Building building1 = Building("123 Main St", 5, 2000);

  print("العنوان: ${building1.address}");
  print("عدد الطوابق: ${building1.numberOfFloors} طابق");

  if(building1.buildYear < 1950){
    print("البناء تاريخى");
  }
  else{
    print("البناء جديد");
  }
}

class Building {
  String address;
  int numberOfFloors;
  int buildYear;

  Building(this.address, this.numberOfFloors, this.buildYear);
}
