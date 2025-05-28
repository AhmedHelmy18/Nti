void main() {
  Map student = {
    "Ahmed": {
      "age": 21,
      "gender": "male",
      "specialization": "computer science",
      "Subjects Degree": {"Math": 50, "Physics": 40, "Chemistry": 80},
    },
    "Helmy": {
      "age": 30,
      "gender": "female",
      "specialization": "Information Technology",
      "Subjects Degree": {"Arabic": 50, "English": 40, "Chemistry": 80},
    },
    "Raed": {
      "age": 50,
      "gender": "male",
      "specialization": "Information Systems",
      "Subjects Degree": {"Math": 50, "Physics": 40, "Chemistry": 80},
    },
  };

  print(student['Ahmed']["age"]);
  print(student['Helmy']["Subjects Degree"]["English"]);
  print(student.keys);
  student['Ahmed']["Subjects Degree"]["French"] = 90;
  print(student['Ahmed']["Subjects Degree"]);
}
