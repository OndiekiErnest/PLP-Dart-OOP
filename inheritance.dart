import 'dart:io';

// parent class
class Shape {
  void draw() {
    print('Drawing shape');
  }
}

// child class inheriting from Shape class
class Circle extends Shape {
  @override // override
  void draw() {
    print('Drawing circle');
  }
}

// interface class/abstract class
abstract class Drawable {
  void draw();
}

// class implementing the interface
class Square implements Drawable {
  @override
  void draw() {
    print('Drawing square');
    // a method that demonstrates the use of a loop
    for (var i = 1; i <= 4; i++) {
      print("Drawing side: $i");
    }
  }
}

class Person {
  String name;

  Person(this.name);

  factory Person.fromFile(String fileName) {
    // initialize with data from a file
    final file = File(fileName);
    // create variable
    final name = file.readAsStringSync();
    // return instance of this class
    return Person(name);
  }
}

void main() {
  var person = Person.fromFile('data.txt');
  print('Person name: ${person.name}');
}
