void main() {
  Room room1 = Room("Living Room", 10, 8);
  double area = room1.length * room1.width;

  print("اسم الغرفه: ${room1.roomName}");

  print("مساحه الغرفه: ${area} متر");

  if (area > 20) {
    print("الغرفه كبيره");
  } else {
    print("الغرفه صغيره");
  }
}

class Room {
  String roomName;
  double length;
  double width;

  Room(this.roomName, this.length, this.width);
}
