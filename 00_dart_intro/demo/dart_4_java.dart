class Car {
  int year;
  int velocity;
  int _fuel = 0;

  Car({this.year = 2022, this.velocity = 0});

  void set refuel(int amount) {
    this._fuel = amount;
  }

  @override
  String toString() => "Carro do ano ${this.year} a ${this.velocity} km/h";
}

class Toyota extends Car {
  @override
  String toString() => "Toyota ${this.year}";
}

void main() {
  Car myCar = Car(velocity: 20);
  Car mini = Toyota();
  print(mini);
  print(myCar);
  final values = [1, 2, 3, 4, 50];
  for (var length in values) {
    print(scream(length));
  }

  values.map((scream)).forEach(print);
}

String scream(int length) {
  return "A${'a' * length}h!";
}
