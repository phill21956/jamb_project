import 'dart:io';

void main() {
  print(regNumb());
}

regNumb() {
  print('Enter your Jamb Registration number: ');
  //Enter first seven letter strings
  print('first 8 alphabets: ');
  var regStr = stdin.readLineSync();
  //Enter last three integers
  print('last 2 numbers : ');
  var regInt = int.parse(stdin.readLineSync());
  var regNumber = '$regStr$regInt';
  while (regNumber.length != 10) {
    print('The number is not valid');
    print('Re-enter your jamb registration number');
    var regInt = int.parse(stdin.readLineSync());
     regNumber = '$regStr$regInt';
  }
  print('Your registration number is: $regNumber');
}
