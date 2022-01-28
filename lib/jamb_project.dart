import 'dart:io';

import 'reg_number.dart';

Future<void> main() async {
//COMMAND TO INPUT USERS NAME
  print('Enter your full name: ');
  final name = stdin.readLineSync();

// COMMAND TO INPUT USERS REG NUMBER
  String regNumber = regNumb();

  print(regNumber);

// COMMAND TO ENTER SUBJECT 1
  print('Enter your First subject: ');
  final subject1 = stdin.readLineSync();

// COMMAND TO ENTER SUBJECT 1 SCORE
  print('Enter your $subject1 score: ');
  var score1 = int.parse(stdin.readLineSync());
  while (score1 < 0 || score1 > 100) {
    print('The number is not valid');
    print('Re-enter your score');
    score1 = int.parse(stdin.readLineSync());
  }

// COMMAND TO ENTER SUBJECT 2
  print('Enter your Second subject: ');
  final subject2 = stdin.readLineSync();

// COMMAND TO ENTER SUBJECT 2 SCORE
  print('Enter your $subject2 score: ');
  var score2 = int.parse(stdin.readLineSync());
  while (score2 < 0 || score2 > 100) {
    print('The number is not valid');
    print('Re-enter your score');
    score2 = int.parse(stdin.readLineSync());
  }

// COMMAND TO ENTER SUBJECT 3
  print('Enter your Third subject: ');
  final subject3 = stdin.readLineSync();

// COMMAND TO ENTER SUBJECT 3 SCORE
  print('Enter your $subject3 score: ');
  var score3 = int.parse(stdin.readLineSync());
  while (score3 < 0 || score3 > 100) {
    print('The number is not valid');
    print('Re-enter your score');
    score3 = int.parse(stdin.readLineSync());
  }

// COMMAND TO ENTER SUBJECT 4
  print('Enter your Fourth subject: ');
  final subject4 = stdin.readLineSync();

// COMMAND TO ENTER SUBJECT 4 SCORE
  print('Enter your $subject4 score: ');
  var score4 = int.parse(stdin.readLineSync());
  while (score4 < 0 || score4 > 100) {
    print('The number is not valid');
    print('Re-enter your score');
    score4 = int.parse(stdin.readLineSync());
  }

//CALCULATE AVERAGE SCORE
  num averageScore = (score1 + score2 + score3 + score4) / 4;
  print('Collating result...');
  averageScore = await Future<num>.delayed(
    Duration(seconds: 3),
    () => averageScore,
  );
  print('$name: Your average jamb score is $averageScore');
  if (averageScore < 60) {
    print('You Failed, try again next time.');
  } else {
    print('You Passed, Congrats!!');
  }
}
