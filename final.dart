import 'dart:io';

import 'challenges/index.dart';
import 'menu/index.dart';

void main() {
  print("Ingrese su nombre:");
  String? nombre = stdin.readLineSync();
  print("¡Hola, $nombre! Por favor, elige un ejercicio del siguiente menú:");

  var menu = new Menu();
  menu.MostrarMenu();

  while (true) {
    String? entrada = stdin.readLineSync()?.toLowerCase();
    if (entrada == "q" || entrada == "exit") {
      break; // Salir del bucle
    }

    int? eleccion = int.tryParse(entrada!);
    if (eleccion != null && eleccion >= 1 && eleccion <= 15) {
      switch (eleccion) {
        case 1:
          var challenge1 = Challenge1();
          challenge1.run();
          break;
        case 2:
          var challenge2 = Challenge2();
          challenge2.run();
          break;
        case 3:
          var challenge3 = Challenge3();
          challenge3.run();
          break;
        case 4:
          var challenge4 = Challenge4();
          challenge4.run();
          break;
        case 5:
          var challenge5 = Challenge5();
          challenge5.run();
          break;
        case 6:
          var challenge6 = Challenge6();
          challenge6.run();
          break;
        case 7:
          var challenge7 = Challenge7();
          challenge7.run();
          break;
        case 8:
          var challenge8 = Challenge8();
          challenge8.run();
          break;
        case 9:
          var challenge9 = Challenge9();
          challenge9.run();
          break;
        case 10:
          var challenge10 = Challenge10();
          challenge10.run();
          break;
        case 11:
          var challenge11 = Challenge11();
          challenge11.run();
          break;
        case 12:
          var challenge12 = Challenge12();
          challenge12.run();
          break;
        case 13:
          var challenge13 = Challenge13();
          challenge13.run();
          break;
        case 14:
          var challenge14 = Challenge14();
          challenge14.run();
          break;
        case 15:
          var challenge15 = Challenge15();
          challenge15.run();
          break;
        default:
          print("Presiona una tecla para continuar...");
          stdin
              .readLineSync(); // Esto se usa en lugar de Console.ReadKey() en Dart.
          menu.MostrarMenu();
          break;
      }
    } else {
      print(
          "Opción no válida. Por favor, ingrese un número entre 1 y 15, o 'q' o 'exit' para salir.");
    }
  }
}