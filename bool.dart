void main() {
  bool isProgrammingFun = true;
  if (isProgrammingFun) {
    print('Programming is fun!');
    int programmingLanguages = 3;
    print('I know $programmingLanguages programming languages.');
    List<String> favoriteLanguages = ['Dart', 'Python', 'JavaScript'];
    print('My favorite programming languages are:');
    for (var language in favoriteLanguages) {
      print('- $language');
    }
  }
}
