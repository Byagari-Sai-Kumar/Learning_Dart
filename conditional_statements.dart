void main() {
  //conditional statements
  
  int age = 22;
  
  if(age == 22){
    print('if condition executed');
  }else if(age == 23){
     print('else if condition executed');
  }else{
    print('else condition executed');
  }
  
  //Terinary conditions
  String fruit = 'orange';
  
  bool isFruit = fruit == 'orange' ? true : false;
  print(isFruit);
  
  //Nested Terinary conditions
  String rameshAge = age == 19 ? 'ramesh age is 19' 
    : age == 23 ? 'ramesh age is 23' 
      : 'ramesh age is 22';
  
  print(rameshAge);
}
