import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class Mammal implements Animal {
  String name;
  
  Mammal(this.name);
  
  void makeSound() {
    print('$name makes a sound');
  }
}

// Derived class overriding a method
class Dog extends Mammal {
  Dog(String name) : super(name);
  
  @override
  void makeSound() {
    print('$name barks');
  }
}

// Class initialized with data from a file
class AnimalList {
  List<String> animals = [];

  AnimalList(String fileName) {
    File file = File(fileName);
    file.readAsLinesSync().forEach((line) {
      animals.add(line);
    });
  }

  void printAnimals() {
    print('Animals in the list:');
    for (var animal in animals) {
      print(animal);
    }
  }
}

// Method demonstrating the use of a loop
void printNumbers(int n) {
  print('Printing numbers from 1 to $n:');
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Creating an instance of Dog
  var dog = Dog('Buddy');
  dog.makeSound();

  // Initializing AnimalList from a file
  var animalList = AnimalList('animals.txt');
  animalList.printAnimals();

  // Demonstrating the use of a loop
  printNumbers(5);
}
