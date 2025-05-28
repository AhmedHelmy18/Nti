import 'dart:io';

void main(){
  stdout.write("ادخل رقم من 1 ل 7: ");
  int number = int.parse(stdin.readLineSync()!);

  switch(number){
    case 1:
      print("الاحد");
      break;
    case 2:
      print("الاثنين");
      break;
    case 3:
      print("الثلاثاء");
      break;
    case 4:
      print("الاربعاء");
      break;
    case 5:
      print("الخميس");
      break;
    case 6:
      print("الجمعه");
      break;
    case 7:
      print("السبت");
      break;
    default:
      print("الرقم المدخل غير صحيح");
  }
}