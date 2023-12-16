import 'dart:io';

void main() {
  List<String> stock = [];
  while (true) {
    stockupdate(stock);
  }
}

void stockupdate(List<String> stock) {
  print("=== IPHONIC ===\n");
  print("1. Add Stock");
  print("2. List Stock\n");
  print("=== IPHONIC ===\n");
  String option = stdin.readLineSync()!;
  if (option == "1") {
    addstock(stock);
  } else if (option == "2") {
    allstock(stock);
  } else {
    return;
  }
}

addstock(List<String> stock) {
  print("");
  print("Enter Model + Variant + Storage + Colors\n");
  String addstocks = stdin.readLineSync()!;
  stock.add(addstocks);
}

allstock(List<String> stock) {
  print("");
  int sno = 1;
  for (String iph in stock) {
    print("${sno++}. $iph");
    print("\n");
  }
}
