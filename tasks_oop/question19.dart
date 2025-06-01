void main() {
  Task task1 = Task("إعداد التقرير الشهري", "2024-05-30", false);

  print("وصف المهمة: ${task1.description}");
  print("تاريخ الاستحقاق: ${task1.dueDate}");

  if (task1.isCompleted) {
    print("المهمة مكتملة");
  } else {
    print("المهمة غير مكتملة");

    String today = "2024-06-01";

    if (task1.dueDate.compareTo(today) < 0) {
      print("المهمة متأخرة");
    }
  }
}

class Task {
  String description;
  String dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, this.isCompleted);
}
