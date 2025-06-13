//class
//object/instance
//constructor
//Parametrised / Named constructor
//Setter / Getter
//Inheritance

//classes are also object those are pre-defined and once created we can able to use the instance of classes
//use class keyword followed by class name always in the capital letters

//Constructor is the invisible function that is invoked automatically once when the object/instance is created
//we can also define the constructor function
//constructor function name will always the same as it's class name
//constructor can also take parameters like other functions

//this keyword
//this keyword is used to access the variables of the class irrespective of their scope but variable should be outside functions

//We can also have named constructor

//setter and getters are used to access class variables
//we can also have setter functions and getter functions inside the class

//Inheritance is the nature of class where child class inherit properties and methods of parent class

class Mathematics {
  int n3 = 5;

  //This is called Parametrised constructor
  Mathematics() {
    print('constructor function is invoked');
  }

  //we cannot have more than one constructor instead we can defined named constructor
  Mathematics.namedConstructor() {
    print('Named constructor function is invoked');
  }

  int addition(int n1, int n2) {
    return n1 + n2 + this.n3;
  }

  int subtraction(int n1, int n2) {
    return n1 - n2;
  }

  int multiplication(int n1, int n2) {
    return n1 * n2;
  }

  double division(int n1, int n2) {
    return n1 / n2;
  }

  int modulus(int n1, int n2) {
    return n1 % n2;
  }

  int n4 = 0;

  //creating a setter function
  void set setNumber(int val) {
    n4 = val;
  }

  //created getter function
  int get getNumber => n4;
}

class Vechile {
  int length = 20;
  int width = 10;

  bool wheels = true;
  bool mirrors = true;

  horn() => print('please move aside!!');
}

class Cycle extends Vechile {
  String engineType = 'chain';
}

class Bike extends Vechile {
  int length = 40;
  int width = 30;
  String engineType = 'engine';
}

void main() {
  //To create an instance of class
  //classname + object name = new classname();
  //always use new keyword

  Mathematics math = new Mathematics();

  int n1 = 23;
  int n2 = 14;

  int addResult = math.addition(n1, n2);
  print(addResult);

  int subResult = math.subtraction(n1, n2);
  print(subResult);

  int multiplyResult = math.multiplication(n1, n2);
  print(multiplyResult);

  double divisionResult = math.division(n1, n2);
  print(divisionResult);

  int modulusResult = math.modulus(n1, n2);
  print(modulusResult);

  Mathematics mathSecond = new Mathematics.namedConstructor();

  //acess the n4 variables from the class
  mathSecond.n4 =
      9; //here we are accessing the class variable and setting some value to it

  print(mathSecond.n4); //here we are getting the class variable

  //These are called simple setter and getter

  //sending value to setter function by using = symbol not as sending values to a function
  mathSecond.setNumber = 55;

  print(mathSecond.getNumber); //calling get function

  Cycle cycleObject = new Cycle();

  print(cycleObject.length);
  print(cycleObject.width);

  cycleObject.horn();

  Bike bikeObject = new Bike();

  print(bikeObject.length);
  print(bikeObject.width);

  bikeObject.horn();
}
