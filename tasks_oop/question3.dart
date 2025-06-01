void main(){

  Car car1 = Car("Toyota", "Camry", 2022, 130);

  print("الشركه: ${car1.company}");
  print("الموديل: ${car1.model}");
  if(car1.currentSpeed > 120){
    print("تجاوز السرعه المسموحه!!");
  }
}

class Car{
  late String company;
  late String model;
  late int year;
  late int currentSpeed;

  Car(this.company, this.model, this.year, this.currentSpeed);
}