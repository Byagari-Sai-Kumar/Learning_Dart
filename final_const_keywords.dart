void main() {
  //final varibales are executed on the runtime.
  //no cpu memory space is allocated until these varibales are accessed and a value is given to them somewhere in the code
  //they cannot re-assign a value
 
  final String name; //here the variable is only declared but not assigned value
  name = 'Sai Kumar'; //here the value is assign so here the memory will allocate
  name = 'raj';
  print(name);
  
  //const are complied time varibales
  //cpu memory is allocated to these varibales whether we use them or not
  //they cannot re-assign a value
  const int age = 25;
  age = 26;
  print(age);
}

//we can use final inside a class but cannot use const 

class My{
  final String name = 'ramesh';
  static const int age = 21; //here we need to use static if using const so that we can use this variables in any other class
  
}

class Another{
  int rameshAge = My.age; //here we can access age variable;
  print(rameshAge);
}
