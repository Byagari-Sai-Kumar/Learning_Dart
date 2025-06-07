//In dart everything we write we write inside a void main function
// Void means returning nothing.
// main means when the file or script runs this is the function
// that calls first itself and execute the code

void main() {
  //In dart we declare variables using var

  var car = 'BMW';

  // Data Types
  String name = 'sai kumar';
  int age = 25;
  double number = 22.6;
  bool isIndian = true;
  List<String> fruits = ['apple', 'banana', 'grapes'];
  List<dynamic> surroundings = ['car', 'tree', 25, true, false];
  Map<String, dynamic> person = {'name': 'Rahul', 'age': 21, 'isIndian': true};
  
  //Array Methods
  fruits.add('orange');
  print(fruits);
  
  fruits.addAll(['papaya','mango']);
  print(fruits);
  
  bool isBananaExists = fruits.contains('banana');
  print(isBananaExists);
  
  var fruitFound = fruits.where((element) => element == 'orange');
  print(fruitFound);
  
  fruits.sort();
  print(fruits);

}
