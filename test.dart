void main() {
  final dog = Dog(10);
  dog.sleep();

}
class Animal {
  final int age;
  Animal(this.age);
  void sleep() => print('Sleep');
}
class Dog extends Animal {
  Dog(int age) : super(age);
  void bark() => print('Bark');
  @override
  void sleep() {
    super.sleep();
    print('Dog is Sleeping');
  }
  }
class CleverDog extends Dog {
  CleverDog(int age) : super(age);

  void catchBoll() => print('Catch');
}
class Cow extends Animal {
  Cow(int age) : super(age);

  void mop() => print('Moo');
}