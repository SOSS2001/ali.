import 'dart:io';

void main() {
  stdout.write("numero: ");
  int numero = int.parse(stdin.readLineSync()!);
  
  stdout.write("date: ");
  String date = stdin.readLineSync()!;
  
  stdout.write("type (achat/vente): ");
  String type = stdin.readLineSync()!;
  
  stdout.write("montant: ");
  double montant = double.parse(stdin.readLineSync()!);
  

  double remise1;
  if (montant < 5000) {
    remise1 = montant * 0;
  } else {
    remise1 = montant * 0.2;
  }
  
  
  double montantTotal = montant - remise1;
  
  double remise2;
  if (type == "achat") {
    remise2 = montantTotal * 0.2;
  } else {
    remise2 = montantTotal * 0.3;
  }
  
  double net = montantTotal - remise2;
  

  print("Le montant total est: $montantTotal");
  print("Le montant net est: $net");
  print("Première remise: $remise1");
  print("Deuxième remise: $remise2");
}