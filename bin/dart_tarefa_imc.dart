import 'dart:io';

void main() {
  print('Vamos calcular seu IMC, qual é o seu nome?');
  String? nome = stdin.readLineSync();
  print('Quantos anos você tem?');
  String? idade = stdin.readLineSync();
  print('Qual é a sua altura?');
  String? inputAltura = stdin.readLineSync();
  double? altura;
  if (inputAltura != null) {
    altura = double.parse(inputAltura);
  }
  print('Qual é o seu peso?');
  String? inputPeso = stdin.readLineSync();
  double? peso;
  if (inputPeso != null) {
    peso = double.parse(inputPeso);
  }
  if (nome != null && idade != null && altura != null && peso != null) {
    double imc = peso / (altura * altura);
    print(
        'Olá, seu nome é $nome, você tem $idade anos, sua altura é $altura metros e seu peso é $peso kg.\n'
            'Considerando sua altura e seu peso atual o seu IMC é ${imc.toStringAsFixed(2)}.');
  } else {
    print('Alguma informação não foi preenchida corretamente.');
  }
}
