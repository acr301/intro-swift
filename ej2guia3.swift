import Foundation

class Calculadora{

static func sumar(a: Int, b: Int) -> Int {
  return a + b
}

static func restar(a: Int, b: Int) -> Int {
  return a - b
}

}



func calcularSumaYRestaTotales(numeros: [Int])
-> (sumaTotal: Int, restaTotal:Int) {

var sumaTotal = 0
var restaTotal = 0

for numero in numeros {
  //pudimos llamar el método sumar, sin inicializar 
  //Calculadora
  sumaTotal = Calculadora.sumar(a:sumaTotal, b:numero)
  restaTotal = Calculadora.restar(a:restaTotal, b:numero)
}

return (sumaTotal, restaTotal)
}

var numeros = [1,2,3,4,5]
var resultado = calcularSumaYRestaTotales(numeros:numeros)

//usamos interpolacion
print("Suma total: \(resultado.sumaTotal)")
print("Resta total: \(resultado.restaTotal)")

