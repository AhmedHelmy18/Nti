void main() {
  Event event1 = Event("مؤتمر تقني", "2024-07-15", "قاعة المؤتمرات", 150);

  print("اسم الحدث: ${event1.nameEvent}");
  print("مكان الحدث: ${event1.location}");

  if (event1.attendeeCount > 100) {
    print("حدث كبير");
  } else {
    print("حدث صغير");
  }
}

class Event {
  String nameEvent;
  String dateEvent;
  String location;
  int attendeeCount;

  Event(this.nameEvent, this.dateEvent, this.location, this.attendeeCount);
}
