String showCharacter({required int charIndex}) {
  List<String> characters = [];

  for (int char = 97; char <= 122; char++) {
    characters.add(String.fromCharCode(char));
  }
  for (int number = 48; number <= 57; number++) {
    characters.add(String.fromCharCode(number));
  }

  String char = characters[charIndex];
  return char;
}
