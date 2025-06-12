void main() {
  //Functions

  //Void function
  //uses void keyword which means this function returns nothing
  //no return keyword present

  void returnNothingFunction(String name) {
    print(name);
  }

  returnNothingFunction('Sai Kumar');

  //Simple Function
  //declare function's return value type

  int addingNumbers(int a, int b) {
    return a + b;
  }

  int sumOFNumbers = addingNumbers(2, 5);
  print(sumOFNumbers);

  //Positional parameters
  void greet(String firstName, int age) {
    String formattedString = 'Hi $firstName, You are $age years old';
    print(formattedString);
  }

  greet('Sai', 25);

  //Named Parameters
  //Always use {} with required keyword to use named parameters
  String car({required String name, int year = 2025}) {
    String formattedString = 'The $name has lauched in the year $year';
    return formattedString;
  }

  print(car(name: 'BMW'));

  //Default parameters
  //Always use {} with default values
  String fruitColor(String fruitName, {String color = 'Red'}) {
    String formattedString = '$fruitName is in the $color color';
    return formattedString;
  }

  print(fruitColor('Apple'));
  
  //Arrow Functions
  //these are simple one line function 
  int sub(int a, int b) => a - b;
  
  print(sub(7,2));
  
  
}
