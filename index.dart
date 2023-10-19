import 'dart:io';

void main() {
  print('Bienvenido, por favor ingresa tu nombre: ');
  String? name = stdin.readLineSync();

  if (name != null) {
    print(
        'Hola, $name. Ahora, ingresa tu fecha de nacimiento en formato dd/mm/yyyy: ');
    String? dateInput = stdin.readLineSync();

    if (dateInput != null) {
      DateTime? birthDate = convertToDate(dateInput);

      if (birthDate != null) {
        int age = calculateAge(birthDate);
        print('Hola, $name, tu edad exacta es $age años.');
      } else {
        print('La fecha de nacimiento ingresada no es válida.');
      }
    } else {
      print('La entrada de la fecha de nacimiento es inválida.');
    }
  } else {
    print('El nombre ingresado es inválido.');
  }
}

DateTime? convertToDate(String date) {
  List<String> parts = date.split('/');
  if (parts.length != 3) return null;

  int day = int.tryParse(parts[0]) ?? 1;
  int month = int.tryParse(parts[1]) ?? 1;
  int year = int.tryParse(parts[2]) ?? 0;

  if (year < 100) {
    // Suponemos que los años con 2 dígitos representan el siglo 20.
    year += 2000;
  }

  return DateTime(year, month, day);
}

int calculateAge(DateTime birthDate) {
  DateTime now = DateTime.now();
  int age = now.year - birthDate.year;

  if (now.month < birthDate.month ||
      (now.month == birthDate.month && now.day < birthDate.day)) {
    age--;
  }

  return age;
}
