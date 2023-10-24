import 'dart:io';
void main(){
  stdout.write("masukan bilangan:");
  int angka =int.parse(stdin.readLineSync()!);

  if (angka %2 == 0){
    print("bilangan genap");
  } else {
    print("bilangan ganjil");
  }

}