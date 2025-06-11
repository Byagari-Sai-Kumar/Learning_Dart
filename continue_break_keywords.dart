void main() {
  //Break and Continue keywords
  
  //Break is used to stop the loop
  
  for(int i = 0; i <= 10; i++){
    print(i);
    if(i == 6){
      break;
    }
  }
  
  //Continue is used to skip the current iteration
  
  for(int number = 0; number <= 10; number++){
    if(number == 5){
      continue; //here the below lines are not executed but loop is not broken
    }
    print(number);
  }

}
