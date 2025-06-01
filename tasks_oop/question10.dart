void main() {
  Movie movie1 = Movie("Sharlok Holmes", "Steven Spielberg", 9.3, 1994);

  print("اسم الفيلم: ${movie1.title}");
  print("اسم المخرج: ${movie1.director}");

  if(movie1.rating > 8){
    print("الفيلم ذوو تقييم عالى");
  }
  else{
    print("الفيلم ذوو تقييم ضعيف");
  }
}

class Movie {
  String title;
  String director;
  double rating;
  int releaseYear;

  Movie(this.title, this.director, this.rating, this.releaseYear);
}
