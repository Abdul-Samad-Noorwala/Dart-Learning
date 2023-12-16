import 'dart:io';

void main() {
  welcome();
  control();
}

welcome() {
  print("\n WELCOME TO IPHONIC\n");
}

void control() {
  contact cont = contact();
  while (true) {
    cont.mainmenu();
    String hi = stdin.readLineSync()!;
    switch (hi) {
      case '1':
        cont.addstock();
        break;

      case '2':
        cont.updatestock();
        break;

      case '3':
        cont.liststock();
        break;

      case '4':
        cont.deletestock();
        break;

      default:
        exit(0);
    }
  }
}

class contact {
  String model = '';
  String storage = '';
  String color = '';
  String rate = '';
  List<List<String>> contacts = [];

  mainmenu() {
    print("======== Main Menu ========\n");
    print("Enter 1 to Add Stock");
    print("Enter 2 to Update Stock");
    print("Enter 3 to List All Stock");
    print("Enter 4 to Delete A Stock\n");
    print("Please Enter Your Choice:\n");
  }

  addstock() {
    print('\nEnter Model:\n');
    this.model = stdin.readLineSync()!;
    print('\nEnter Storage:\n');
    this.storage = stdin.readLineSync()!;
    print("\nEnter Color\n");
    this.color = stdin.readLineSync()!;
    print("\nEnter Amount\n");
    this.rate = stdin.readLineSync()!;
    contacts.add([this.model, this.storage, this.color, this.rate]);
  }

  updatestock() {
    if (!contacts.isEmpty) {
      print('\nChoose in Number (Start From 0)\n${contacts}');
      String index = stdin.readLineSync()!;
      contacts.removeAt(int.parse(index));
      addstock();
      print(' Stock Updated \n');
    } else {
      print(' !! List is Empty !!\n');
    }
  }

  liststock() {
    if (contacts.isEmpty) {
      print('!! The List is Empty !!\n');
    } else {
      for (var lst in contacts) {
        print('\nModel: ${lst[0]}');
        print('Storage: ${lst[1]}');
        print('Color: ${lst[2]}');
        print('Amount: ${lst[3]}');
      }
    }
  }

  deletestock() {
    if (!contacts.isEmpty) {
      print('\nChoose in Number (Start From 0)\n${contacts}');
      String delIndex = stdin.readLineSync()!;
      contacts.removeAt(int.parse(delIndex));
      print('---- Deleted ----\n');
    } else {
      print('!! List is Empty !!\n');
    }
  }
}
