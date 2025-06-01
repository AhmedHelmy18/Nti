void main() {
  Plant plant1 = Plant("Rose", "Flower", true);

  print("اسم النبات: ${plant1.name}");
  print("نوع النبات: ${plant1.type}");
  if (plant1.needWater) {
    print("النبات يحتاج لماء");
    plant1.needWater = false;
  } else {
    print("النبات لا يحتاج لماء");
  }
}

class Plant {
  String name;
  String type;
  bool needWater;

  Plant(this.name, this.type, this.needWater);
}
