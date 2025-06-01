void main() {
  User user1 = User( "user123", "user@example.com", true);

  print("اسم المستخدم: ${user1.uerName}");
  print("البريد الالكترونى: ${user1.email}");
  if(user1.isActive){
    print("الحساب نشط");
  }
  else{
    print("الحساب معطل");
  }
}

class User {
  String uerName;
  String email;
  bool isActive;

  User(this.uerName, this.email, this.isActive);
}
