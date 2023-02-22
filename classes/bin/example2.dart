void main(List<String> args) {
  const v = Vehicle(4);
  const b = Bicycle();
}

class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() {
    if (runtimeType == Vehicle) {
      return "number of wheels: $wheelCount";
    } else {
      return super.toString();
    }
  }
}

class Car extends Vehicle {
  const Car() : super(4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}





/*class Car extends Vehicle {
  const Car() : super(4);// this one is fine because when write the constructor of Car it automatically calls the constructor of superclass which has to be filled
}*/

/*class Car extends Vehicle {
  const Car(
      super.wheelCount); // this one is also fine because we are initializing final variable of Vehicle class which shoul be initialized

}*/
