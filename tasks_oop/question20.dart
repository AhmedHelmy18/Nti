void main(){

  WeatherReading reading1 = WeatherReading("cairo", 30, 50, "rainy");

  print("الموقع: ${reading1.location}");
  print("الحراره: ${reading1.temperatureCelsius}");

  if(reading1.condition == "rainy"){
    print("احضر مظلتك");
  }
  else{
    print("الطقس رائع");

  }
}

class WeatherReading{
  String location;
  int temperatureCelsius;
  int humidityPercent;
  String condition;
  WeatherReading(this.location, this.temperatureCelsius, this.humidityPercent, this.condition);

}