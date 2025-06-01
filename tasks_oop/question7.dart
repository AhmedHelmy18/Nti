void main() {
  Order order1 = Order(101, "فاطمه", 500, "pending");

  print("رقم الطلب: ${order1.OrderId}");
  print("اسم العميل: ${order1.customerName}");
   if(order1.status == "pending"){
     print("الطلب بحاجه الى المعالجه");
     order1.status = "processing";
   }
   print("الحاله: ${order1.status}");
}

class Order {
  late int OrderId;
  late String customerName;
  late int totalAmount;
  late String status;

  Order(this.OrderId, this.customerName, this.totalAmount, this.status);
}
