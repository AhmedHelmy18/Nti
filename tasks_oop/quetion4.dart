void main(){
  Book book1 = Book("The Great Gatsby", "F. Scott Fitzgerald", 180, true);

  print("اسم الكتاب: ${book1.title}");
  print("اسم المؤلف: ${book1.author}");
  if(book1.isRead){
    print("لقد قرأت هذا الكتاب");
  }
  else{
    print("لم أقرأ هذا الكتاب");
  }
}
class Book{
  late String title;
  late String author;
  late int pagesNumber;
  late bool isRead;
  Book(this.title, this.author, this.pagesNumber, this.isRead);
}