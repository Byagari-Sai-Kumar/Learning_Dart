void main() {
  //Switch statement
  //More readablity than if else condition

  String carResult = findCar('Tata');
  print(carResult);
}

String findCar(String carName) {
  switch (carName) {
    case ('Toyota'):
      return 'Best in Engine';
    case ('Tata'):
      return 'Best in Build Quality';
    default:
      return 'Mention a car';
  }
}
