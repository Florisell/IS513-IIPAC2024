import 'dart:math';

class Circulo{

final double radio;
final String color;

//constructor
Circulo({
required this.radio,
required this.color,

});

// metodo calcular area
 double area(){
 return pi * (radio* radio);
 }

 // metodo calcular perimetro
 double perimetro(){
 return 2* pi* radio;
 }
}void main() {

 final circulo1 = Circulo(radio: 4, color: "Rojo");

 // mostrar el área
  print("area: ${circulo1.area()}");

  // mostrar el perímetro
  print("perímetro: ${circulo1.perimetro()}");
}