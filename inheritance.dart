import 'dart:io';

void main() {
  var obj = Parent();
  obj.mainmenu();
  while (true) {
    obj.mainmenu();
  }
}

class Parent extends Child {
  mainmenu() {
    print("\n WELCOME TO IPHONIC \n");
    print("1.) Enter Your Budget");
    print("2.) Exit\n");
    String option = stdin.readLineSync()!;
    if (option == "1") {
      print("Enter Amount");
      // ignore: unused_local_variable
      String option1 = stdin.readLineSync()!;
      print(stock);
      print("\nSelect The Model Upon Your Requiremnt\n");
      String option2 = stdin.readLineSync()!;
      if (option2 == "iPhone 7 Plus") {
        print("Are You Sure? (Yes/No)");
      } else if (option2 == "iPhone 8 Plus") {
        print("Are You Sure? (Yes/No)");
      }

      String option3 = stdin.readLineSync()!;
      if (option3 == "Yes") {
        print("Choose Colour (Red , Black , Gold , Silver)");
        String Color = stdin.readLineSync()!;
        if (Color == "Red") {
          print("\nTotal Amount = 39,000\n");
          print("How Would You Like To Pay (Cash Or Bank Transfer)");
        } else if (Color == "Black") {
          print("\nTotal Amount = 39,000\n");
          print("How Would You Like To Pay (Cash Or Bank Transfer)");
        } else if (Color == "Gold") {
          print("\nTotal Amount = 39,000\n");
          print("How Would You Like To Pay (Cash Or Bank Transfer)");
        } else if (Color == "Silver") {
          print("\nTotal Amount = 39,000\n");
          print("How Would You Like To Pay (Cash Or Bank Transfer)");
        }
        String payment = stdin.readLineSync()!;
        if (payment == "Cash") {
          print("Thanks For Shopping (iPhonic)");
        } else if (payment == "Bank Transfer") {
          print("00100100100100 Meezan Bank Account Holder Name :- iPhonic");
          print(" Transaction Successfully Completed");
          print("Thanks For Shopping (iPhonic)");
        }
      } else if (option3 == "No") {
        return;
      }
    } else if (option == "2") {
      print("\nHave A Good Day See You Soon\n");
      return;
    }
  }
}

class Child {
  List<Map<String, String>> stock = [
    {
      "iPhone 7 Plus": "128GB",
      "Factory Unlock": "PTA Approved",
      "10/10 Condition": "100% Battery Health",
      "Only Phone": "Any Color"
    },
    {
      "iPhone 8 Plus": "256GB",
      "Factory Unlock": "PTA Approved",
      "10/10 Condition": "100% Battery Health",
      "Only Phone": "Any Color"
    },
  ];
}
