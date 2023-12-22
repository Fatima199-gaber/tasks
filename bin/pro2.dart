import 'dart:async';
import 'dart:io';

void main(){}

task1() {
  print("Enter your name ");
  String name = stdin.readLineSync()!;
  print("Hello $name");

  print("Enter your birth year");
  int year = int.parse(stdin.readLineSync()!);
  print("your age is : " + (2023 - year).toString());
}

task2() {
  print("Enter num 10");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter num 20");
  int num2 = int.parse(stdin.readLineSync()!);

  print("Enter num 30");
  int num3 = int.parse(stdin.readLineSync()!);

  print("Enter num 40");
  int num4 = int.parse(stdin.readLineSync()!);

  int add = num2 + num1;
  int div = num3 ^ num1;
  int mul = num4 * num2;
  int sub = num4 - num3;

  print("the result is  $add ");
  print("the result is  $div ");
  print("the result is  $mul ");
  print("the result is  $sub ");
}

task3() {
  String name = "hello world from home";
  print(name.codeUnits);
  print(name.toUpperCase());
  print(name.length);
  print(name.contains("nada"));
} //operators

task5() {
  String? name;
  print(name ?? "Visitor");
  int? age = 10;
  age = null;
  print(age ?? 6);
} // nullsafety

task6() {
  String? name;
  name = "nada";
  name = null;
  print("$name ${name ?? "hello".isEmpty}");
} // null

task7() {
  String? name = stdin.readLineSync();
  if (name == null) {
    print("no name");
  } else {
    print("hello $name");

    double degree = double.tryParse(stdin.readLineSync()!) ?? 0;
    if (degree < 50) {
      print("F");
    } else {
      print("S");
    }
  }
} // if

task8() {
  double degree = double.tryParse(stdin.readLineSync()!) ?? 0;
  if (degree < 0 && degree < 42) {
    print("Failed");
  } else if (degree >= 42 && degree < 50) {
    print("Weak");
  } else if (degree >= 50 && degree < 65) {
    print("Good");
  } else if (degree >= 65 && degree < 80) {
    print("V.Good");
  } else {
    print("invalid num");
  }
} // if else

task9() {
  String fruit = 'apple';

  switch (fruit) {
    case 'apple':
      print('Selected fruit is an apple.');
      break;

    case 'banana':
      print('Selected fruit is a banana.');
      break;

    case 'orange':
      print('Selected fruit is an orange.');
      break;

    default:
      print('Unknown fruit.');
  }
} // switch

task10() {
  String fName = "nada";
  String lName = "tamer";
  String temp = fName;
  fName = lName;
  lName = temp;
  print(fName);
  print(lName);
} // swap

task11(){  for(int count =1; count<=10; count++)
{
  print("$count is ${count.isEven?"even":"odd"}");
}} // in line if

task12(){  List<String> names= [];
for(int count=1;count<=100;count++ )
{
  print("Enter your name");
  String name = stdin.readLineSync()!;
  names.add(name);
}} // for in list

task13(){  for (int i = 1; i <= 10; i++)
{
  if(i==5)
  {
    continue;
  }
  print(i);
}} // continue

task14(){  int i = 11;
do {
  print("i");
  i++;
}
while(i<=10);} // do,while

task15(){
  for (int i = 1; i <=3 ; i++) {
    print("Enter ur Email :");
    String email = stdin.readLineSync()!;

    print("Enter ur password :");
    String password = stdin.readLineSync()!;

    if (email.endsWith("@gmail.com") && password.length >= 7)
    {
      print("Login successful!");
      break;
    }
    else {
      print("Invalid email or password");
    }
    if (i == 3){
      print("Please try again later.");
    }
    else{
      print("Failed");
    }
  }} // email.pass

task16(){  List<String> list = ["nada","ahmed","ali"];
List<String> animal = ["dog","cat","lion"];
for(String element in list){
  print(element);
}} // name of list

task17(){
  print("Enter the number :");
  int input = int.parse(stdin.readLineSync()!);

  if (input.isEven){
    print('The number $input is even.');
  } else {
    print('The number $input is odd.');
  }} // even . odd

task18(){  List<String> names = [];

while (true) {
  print('Enter a name : ');
  String userInput = stdin.readLineSync() ?? '';
  if (userInput.toLowerCase()== 'end'||
  userInput.toLowerCase()=='exit'||
  userInput.toLowerCase()=='close')
  {
  break;
  } else {
  names.add(userInput);
  }
  }
  print('\nList of names:');
  print(names);} // list of name . end

task19(){ {
  List<String> wordsList = ['apple', 'apnana', 'orange', 'pear', 'grape'];
  List<String> selectedWords = [];

  print('Enter a character: ');
  String input = stdin.readLineSync() ?? '';

  // if (input.length == 1 || input.length == 2) {
  for (String word in wordsList) {
    if (word.startsWith(input)) {
      selectedWords.add(word);
    }
  }
  if (selectedWords.isNotEmpty) {
    print('\nWords starting with "$input":');
    print(selectedWords);
  } else {
    print('\nNo words found starting with "$input".');
  }
}
} // char of list

task20(){
  List<String> list = ["home","aqwaman","alone","ironman"];
  List<String> results = [];
  for(String e in list){
    if(e.toLowerCase().startsWith("a")){
      results.add(e);
    }
  }
  print(results);
} // list of film

printEvenNumber(){
  print("Enter the start");
  int start = int.tryParse(stdin.readLineSync()!)??0;
  print("Enter the End");
  int end = int.tryParse(stdin.readLineSync()!)??0;

  for(;start<=end;start++){
    print("$start is ${start.isEven?"Even" : "Odd"}");
  }
} // odd . even

task21(){
  print("Enter the sentence");
  String sentence = stdin.readLineSync()!;
  List<String> result =sentence.split(";");
  print(result);
} // split

task22(){
  print("Enter the sentence");
  String sentence = stdin.readLineSync()!;
  List<String> result = sentence.split(" ");
  print(result.join("n"));
} // join

task23(){
  print("Enter the sentence");
  String sentence = stdin.readLineSync()!;
  print(sentence.replaceAll(RegExp(r"[1-9]"),""));
} // RegExp

task24(){
  List<String> result = [];

  print("Enter the sentence");
  String sentence = stdin.readLineSync()!;

  for(int i=1; i <10; i++ ){
    print(result);
  }
}
//
// void main1(){
//   makeTimer();
// }
// Future<void> makeTime1r1() async {
//   await Future.delayed(Duration(seconds: 8));
//   print("nada");
// } // async delay
//
// void main2(){
//   makeTimer(); // lazm aktbha fl void main
// }
// Future<void> makeTimer2() async {
//   Timer.periodic(Duration(seconds: 3), (timer) {
//     print(timer.tick);
//     if(timer.tick==5){
//       timer.cancel();
//     }
//   });
//
// }

void main1() {
  Timer(Duration(seconds: 3),(){
    print("goodbye");
  });
} // timer one time

void main2(){
  Timer.periodic(Duration(seconds: 1), (timer) {
    DateTime now = DateTime.now();
    print("${now.hour}:${now.minute}:${now.second}:${now.hour>=12 ? "PM" : "AM"}"
    );
  });
} // time for now