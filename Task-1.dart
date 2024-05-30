import 'dart:io';

class Person {
  String firstName;
  String lastName;
  int age;

  Person(this.firstName, this.lastName, this.age);

  String getInfo() {
    return 'FirstName: $firstName\nLastName: $lastName\nAge: $age';
  }
}

void main() {
  stdout.write('Enter your FirstName: ');
  String? firstName = stdin.readLineSync();

  stdout.write('Enter your LastName: ');
  String? lastName = stdin.readLineSync();

  stdout.write('Enter your Age: ');
  String? ageInput = stdin.readLineSync();
  
  int age = int.parse(ageInput!);
  Person person = Person(firstName!, lastName!, age);

  print(person.getInfo());
}
