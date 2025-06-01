void main() {
  Message message1 = Message(
    "على",
    "أحمد",
    "مرحبا, كيف حالك",
    "2023-08-01 10:00:00",
  );

  print("اسم المرسل: ${message1.sender}");
  print("الرساله: ${message1.content}");
}

class Message {
  String sender;
  String receiver;
  String content;
  String timestamp;

  Message(this.sender, this.receiver, this.content, this.timestamp);
}
