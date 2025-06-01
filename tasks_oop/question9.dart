void main() {
  Song song1 = Song("Shape of You", 300, "Ed Sheeran", "Pop");

  print("اسم الاغنيه: ${song1.name}");

  print("اسم الموسيقى: ${song1.artist}");

  if(song1.genre == "Rock"){
    print ("موسيقى الروك رائعه");
  }
  else{
    print("موسيقى البوب رائعه");
  }
}

class Song {
  String name;
  int duration;
  String artist;
  String genre;

  Song(this.name, this.duration, this.artist, this.genre);
}
