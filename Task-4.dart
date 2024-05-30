import 'dart:io';

class Employee {
  String firstName;
  String lastName;
  int age;
  String position;
  double salary;

  Employee(this.firstName, this.lastName, this.age, this.position, this.salary);

  void setSalary(double newSalary) {
    salary = newSalary;
  }

  double getSalary() {
    return salary;
  }

  String getInfo() {
    return 'FirstName: $firstName\nLastName: $lastName\nAge: $age\nPosition: $position\nSalary: $salary';
  }
}

void main() {
  print("Enter employee's FirstName:");
  String? firstName = stdin.readLineSync();
  print("Enter employee's LastName:");
  String? lastName = stdin.readLineSync();
  print("Enter employee's Age:");
  String? ageInput = stdin.readLineSync();
  int age = int.parse(ageInput!);
  print("Enter employee's Position:");
  String? position = stdin.readLineSync();
  print("Enter employee's Salary:");
  String? salaryInput = stdin.readLineSync();
  double salary = double.parse(salaryInput!);

  Employee employee = Employee(firstName!, lastName!, age, position!, salary);

  print('\n' + employee.getInfo() + '\n');

  print("Set a new Salary:");
  String? newSalaryInput = stdin.readLineSync();
  double newSalary = double.parse(newSalaryInput!);
  employee.setSalary(newSalary);

  print('\n' + employee.getInfo() + '\n');
}
