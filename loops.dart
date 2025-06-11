void main() {
  //for loop
  //for loop has first Initialization, Condition, Updation
  for (int number = 0; number < 9; number++) {
    print('Hello world!');
  }

  //forEach loop
  //this loop uses a function and iterated over each element
  List<String> fruits = ['apple', 'orange', 'banana'];
  fruits.forEach((fruit) {
    print(fruit);
  });

  //for-in loop
  //iterate over each element but declaring a variable
  for (var eachFruit in fruits) {
    print(eachFruit);
  }

  //while loop
  //loop until the condition fails
  int number = 0;
  while (number < 5) {
    print(number);
    number++;
  }
  
  //do-while loop
  //first loop then check for condition
  //it means it returns atleast one value
  
  int num = 5;
  do{
    print(num);
    num++;
  }while(number <= 5 );
}
