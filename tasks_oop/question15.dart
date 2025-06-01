void main(){
  Device device1 = Device("Smartphone", "Samsung", 80);

  print("نوع الجهاز: ${device1.type}");
  print("اسم الشركه: ${device1.brand}");

  if(device1.batteryLevel < 20){
    print("البطاره منخفضه");
  }
  else{
    print("البطاره مشحونه");
  }
}

class Device {
  String type;
  String brand;
  int batteryLevel;
  Device(this.type, this.brand, this.batteryLevel);
}