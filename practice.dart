import 'dart:io';

void main() {
  print("\nWelcome To Blue Ribbon Bakery\n");
  print("\nWhat Would You Like To Chose?\n");

  Map<String, double> items = {
    'Burger': 350.0,
    'Roll': 180.0,
    'Pizza': 360.0,
    'Pastries': 110.0,
    'Chip': 100.0
  };

  displayMenu(items);

  List<String> selectedItems = [];
  double totalAmount = 0.0;

  while (true) {
    print("\nEnter the item you want to select  (or type 'done' to finish):\n");
    String userInput = stdin.readLineSync()!;

    if (userInput.toLowerCase() == 'done') {
      break;
    }

    if (items.containsKey(userInput)) {
      selectedItems.add(userInput);
      totalAmount += items[userInput]!;
      print("Added $userInput to your cart. Price: ${items[userInput]} PKR");
    } else {
      print("\nInvalid items. Please Choose From The Menu.\n");
    }
  }

  if (selectedItems.isNotEmpty) {
    print("\nYour Selected Items:\n");

    for (var item in selectedItems) {
      print("$item: ${items[item]} PKR");
    }

    print("\nTotal Amount: $totalAmount PKR");

    print("\nProcessing payment...");
    print("Payment Successful!");
    print("Thanks for shopping at Blue Ribbon Bakery!");
  } else {
    print("No items selected. Thanks For Visiting Blue Ribbon Bakery!");
  }
}

void displayMenu(Map<String, double> items) {
  print("\nMenu");

  items.forEach((item, price) {
    print("$item: $price PKR");
  });

  print("\n");
}
