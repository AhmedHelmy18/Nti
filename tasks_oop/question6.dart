void main(){
  Color color1 = Color(R: 200, G: 50, B: 50);

  print("الاحمر: ${color1.R}");
  print("الاخضر: ${color1.G}");
  print("الازرق: ${color1.B}");

  if(color1.R > color1.G && color1.R > color1.B){
    print("اللون يغلب عليه الاحمر");
  }
  else if(color1.G > color1.R && color1.G > color1.B){
    print("اللون يغلب عليه الاخضر");
  }
  else{
    print("اللون يغلب عليه الازرق");
  }
}
class Color{
  late int R;
  late int G;
  late int B;
  Color({required this.R, required this.G, required this.B});
}