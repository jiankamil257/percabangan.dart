import 'dart:io';
void main() {
  stdout.write("masukan bilangan:");
  int angka =int.parse(stdin.readLineSync()!);

  if (angka > 0){
    print("bilangan positif");
  } else if (angka < 0){
    print("bilangan negatif");
  } else {
    print("bilangan nol");
  }
}