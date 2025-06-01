void main(){

  Product product1 = Product("لابتون", 50000, 1);

  print("اسم المنتج: ${product1.name}");
  print("سعر المنتج: ${product1.price}");
  if(product1.quantity < 10){
    print ("المخزون منخفض");
  }
}

class Product{
  late String name;
  late double price;
  late int quantity;

  Product(String name, double price, int quantity){
    this.name = name;
    this.price = price;
    this.quantity = quantity;
  }
}