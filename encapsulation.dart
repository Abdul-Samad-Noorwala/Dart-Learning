void main() {
  Details dt = Details();
  print(dt._pass);
}

class Details {
  String name = "Meezan Bank";
  String _pass = "abd";

  String Password() {
    return _pass;
  }
}
