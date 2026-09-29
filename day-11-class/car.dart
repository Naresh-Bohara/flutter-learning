void main() {
  Car suzuki = new Car();
  suzuki.color = "red";
  suzuki.brand = "suzuki";
  suzuki.number = "4323";

  suzuki.printDetails();
}

class Car {
  String? color;
  String? brand;
  String? number;

  void printDetails() {
    print("Your cars Details is as below: ");
    print("car color is: ${this.color}");
    print("car brand is: ${this.brand}");
    print("car number is: ${this.number}");
  }
}
