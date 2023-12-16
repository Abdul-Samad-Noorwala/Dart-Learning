import 'dart:io';

void main() {
  print("\n=== KHANDANI MOTORS ===\n");
  print(" Enter Your Requirements Upon Engine Size\n");
  String option = stdin.readLineSync()!;

  switch (option) {
    case '600':
      print("nhi yar is say zyada CC chahiyay");
      main();
      break;
    case '800':
      print("is say bhi zyada");
      main();
      break;
    case '1000':
      print("or zyada yar");
      main();
      break;
    case '1200':
      print("is say bhi upar");
      main();
      break;
    case '1800':
      print("is say upar hai to btao wrna chabi do is ki");
      main();
      break;
    case '2000':
      print("best ho gaya chabi lao");
      main();
      break;
    default:
      print("choro kahi or say dekh lun ga");
  }
}
