import 'dart:io';
import 'dart:math';

class Challenge1 {
  void run() {
    print("Ingrese un número:");
    int num = int.parse(stdin.readLineSync()!);
    if (num > 0)
      print("Positivo");
    else if (num < 0)
      print("Negativo");
    else
      print("Es cero");
  }
}

class Challenge2 {
  void run() {
    print("Ingrese primer número:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Ingrese segundo número:");
    double num2 = double.parse(stdin.readLineSync()!);
    print(
        "Suma: ${num1 + num2}\nResta: ${num1 - num2}\nMultiplicación: ${num1 * num2}\nDivisión: ${num1 / num2}");
  }
}

class Challenge3 {
  void run() {
    print("Ingrese un número:");
    int numero = int.parse(stdin.readLineSync()!);
    print("El cuadrado de $numero es: ${numero * numero}");
  }
}

class Challenge4 {
  void run() {
    print("Ingrese el radio del círculo:");
    double radio = double.parse(stdin.readLineSync()!);
    double area = pi * radio * radio;
    print("El área del círculo con radio $radio es: $area");
  }
}

class Challenge5 {
  void run() {
    print("Ingrese un número entre 1 y 7:");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero >= 1 && numero <= 7) {
      String dia = obtenerDiaDeLaSemana(numero);
      print("El día correspondiente al número $numero es: $dia");
    } else {
      print("Número no válido. Debe estar en el rango del 1 al 7.");
    }
  }

  String obtenerDiaDeLaSemana(int numero) {
    List<String> diasSemana = [
      "Lunes",
      "Martes",
      "Miércoles",
      "Jueves",
      "Viernes",
      "Sábado",
      "Domingo"
    ];
    return diasSemana[numero - 1];
  }
}

class Challenge6 {
  void run() {
    print("Ingrese su salario mensual:");
    double salario = double.parse(stdin.readLineSync()!);
    double impuesto = salario > 1000 ? 0.1 * salario : 0;
    print("El impuesto a pagar es: $impuesto");
  }
}

class Challenge7 {
  void run() {
    try {
      print("Número a dividir:");
      double n = double.parse(stdin.readLineSync()!);
      print("Divisor:");
      double divisor = double.parse(stdin.readLineSync()!);
      print("Resultado: ${n / divisor}");
    } catch (e) {
      print("Error al realizar la operación!");
    }
  }
}

class Challenge8 {
  void run() {
    int suma = 0;
    for (int i = 1; i <= 100; i += 2) {
      suma += i;
    }
    print("La suma de números impares entre 1 y 100 es: $suma");
  }
}

// Suponiendo que la clase Fraccion ya fue implementada en Dart

class Challenge9 {
  void run() {
    print("Ingrese numerador de la primera fracción:");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la primera fracción:");
    int den1 = int.parse(stdin.readLineSync()!);

    print("Ingrese numerador de la segunda fracción:");
    int num2 = int.parse(stdin.readLineSync()!);
    print("Ingrese denominador de la segunda fracción:");
    int den2 = int.parse(stdin.readLineSync()!);

    try {
      Fraccion fraccion1 = Fraccion(num1, den1);
      Fraccion fraccion2 = Fraccion(num2, den2);
      Fraccion resultado = fraccion1.sumar(fraccion2);
      print("La suma de $fraccion1 y $fraccion2 es: $resultado");
    } catch (e) {
      print("Error: $e");
    }
  }
}

class Fraccion {
  int numerador;
  int denominador;

  Fraccion(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw Exception("El denominador no puede ser cero.");
    }
  }

  Fraccion sumar(Fraccion otra) {
    int nuevoNumerador =
        numerador * otra.denominador + otra.numerador * denominador;
    int nuevoDenominador = denominador * otra.denominador;
    return Fraccion(nuevoNumerador, nuevoDenominador);
  }

  @override
  String toString() {
    return "$numerador/$denominador";
  }
}

class Challenge10 {
  void run() {
    print("Introduce una palabra:");
    String palabra = stdin.readLineSync()!;
    String invertida = invertirPalabra(palabra);
    print("La palabra invertida es: $invertida");
  }

  String invertirPalabra(String palabra) {
    return palabra.split('').reversed.join();
  }
}

class Challenge11 {
  void run() {
    print("Introduce el primer número:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Introduce el segundo número:");
    double num2 = double.parse(stdin.readLineSync()!);
    print("Introduce el tercer número:");
    double num3 = double.parse(stdin.readLineSync()!);
    double promedio = (num1 + num2 + num3) / 3;
    print("El promedio de los tres números es: $promedio");
  }
}

class Challenge12 {
  void run() {
    List<double> numeros = [];

    for (int i = 1; i <= 3; i++) {
      print("Introduce el número $i:");
      double numero = double.parse(stdin.readLineSync()!);
      numeros.add(numero);
    }

    double promedio = calcularPromedio(numeros);
    print("El promedio de los tres números es: $promedio");
  }

  double calcularPromedio(List<double> numeros) {
    double suma = 0;
    for (var numero in numeros) {
      suma += numero;
    }
    return suma / numeros.length;
  }
}

class Challenge13 {
  void run() {
    print("Introduce una palabra:");
    String inputPalabra = stdin.readLineSync()!;
    bool esPalindromo = verificarPalindromo(inputPalabra);

    if (esPalindromo) {
      print("La palabra $inputPalabra es un palíndromo.");
    } else {
      print("La palabra $inputPalabra no es un palíndromo.");
    }
  }

  bool verificarPalindromo(String palabra) {
    String palabraInvertida = palabra.split('').reversed.join();
    return palabra == palabraInvertida;
  }
}

class Challenge14 {
  void run() {
    print("Introduce un número:");
    int numero = int.parse(stdin.readLineSync()!);
    if (numero % 2 == 0) {
      print("El número $numero es par.");
    } else {
      print("El número $numero es impar.");
    }
  }
}

class Challenge15 {
  void run() {
    print("Introduce un número:");
    int numero = int.parse(stdin.readLineSync()!);
    if (numero >= 0 && numero <= 10) {
      print("El número $numero está en el rango de 0 a 10.");
    } else {
      print("El número $numero está fuera del rango de 0 a 10.");
    }
  }
}
