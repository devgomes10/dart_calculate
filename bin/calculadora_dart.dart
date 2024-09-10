import 'dart:io';

void main() {
  double numberOne = 0;
  double numberTwo = 0;
  String operation = "";
  String? entry = "";
  List<String> operations = <String>[
    "+",
    "-",
    "*",
    "/",
  ];

  void sum() {
    print(numberOne + numberTwo);
  }

  void subtraction() {
    print(numberOne - numberTwo);
  }

  void division() {
    print(numberOne / numberTwo);
  }

  void multiplication() {
    print(numberOne * numberTwo);
  }

  void calculate() {
    switch (operation) {
      case "+":
        sum();

      case "-":
        subtraction();

      case "*":
        multiplication();

      case "/":
        division();
        break;
    }
  }

  void getOperation() {
    print("Digite uma operação: ${operations.toString()}");
    entry = stdin.readLineSync();

    if (entry != null) {
      if (operations.contains(entry)) {
        operation = entry!;
      } else {
        print("Opção inválida");
        getOperation();
      }
    }
  }

  print("Digite o primeiro valor");

  entry = stdin.readLineSync();

  getOperation();

  if (entry != null) {
    if (entry != "") {
      numberOne = double.parse(entry!);
    }
  }

  print("Digite o segundo valor");

  entry = stdin.readLineSync();
  if (entry != null) {
    if (entry != "") {
      numberTwo = double.parse(entry!);
    }
  }

  print("O resultado da operação é:");

  calculate();
}
