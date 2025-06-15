//class
//object/instance
//constructor
//Parametrised / Named constructor
//Setter / Getter
//this keyword
//Inheritance
//super
//Method overriding
//Abstract class
//Mixin

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

//Super keyword - helps to send parameters to parent class from the child class
//use : super() in the child class

//Method Overriding is always giving priority to child class if both child and parent class has same properties or methods.

//Abstract class
//we cannot create an instance of abstract class
//we can call a function in abstract class and then can define function in the child classes.

//Implements keyword
//using extends keyword we can have only one parent class to child class but using implements we can give two parents to one child class

//Mixin are classes used to mix its properties or method with another classes. use with keyword

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

class Electronic{
  
  int yearManufactured = 2010;
  
  Electronic(String brand){
    print('current electronic item is $brand brand');
  }
  
  void category(){
    print('this is an electronice item');
  }
}

class Tab extends Electronic{
  
  Tab(String model, String brand) :super(brand){
    print('current tab is $model model');
  }
  
  void games() => print('playing games in the tab');
  
  void category() {
    print('this is tab item');
    super.category();
  }
  
  void updateManufacture(int year){
    super.yearManufactured = year;
  }
}

abstract class Animal{
  void voice();
}

class Cat extends Animal{
  void voice() => print('cat says meww...');
}

class Dog extends Animal{
  void voice() => print('dog says boww...');
}

abstract class ParentOne{
  void parentOneCalling();
}

abstract class ParentTwo{
  void parentTwoCalling();
}

class ChildOne implements ParentOne, ParentTwo{
  @override
  void parentOneCalling() => print('Hello parent one is calling...');
  
  @override
  void parentTwoCalling() => print('Hello parent two is calling...');
}

mixin Swim{
  void swim() => print('Swimming...');
} 

class Fish with Swim{
  
}

class Human with Swim{
  
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
  
  Tab tabObject = new Tab('Samung new tab','Samsung');
  
  tabObject.games();
  
  tabObject.category();
  
  tabObject.updateManufacture(2023);
  
  print(tabObject.yearManufactured);
  
  Cat animalObject = new Cat();
  animalObject.voice();
  
  ChildOne childOne = new ChildOne();
  childOne.parentOneCalling();
  
  Fish fish = new Fish();
  fish.swim();
  
  Human human = new Human();
  human.swim();

}
