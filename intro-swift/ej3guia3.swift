protocol Figura{
  func calcularArea() -> Double
}

struct Cuadrado:Figura {
  var lado: Double

  func calcularArea() -> Double {
    return lado * lado
  }
}

struct Rectangulo:Figura {
  var ancho: Double
  var alto: Double

  func calcularArea() -> Double{
    return ancho * alto
  }
}

func calcularAreaTotal(figuras:[Figura]) -> Double{
  var areaTotal = 0.0

  for figura in figuras{
    areaTotal = areaTotal + figura.calcularArea()
  }
  return areaTotal
}

var cuadrado = Cuadrado(lado:4.0)
var rectangulo = Rectangulo(ancho:3.0,alto:5.0)
var figuras: [Figura] = [cuadrado,rectangulo]

var areaTotal = calcularAreaTotal(figuras:figuras)
print("Area total \(areaTotal)")



