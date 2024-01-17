import Foundation

class Poligono {
    
    var nome: String
    var angulo: Double = 40.0
    
    init(nome: String) {
        self.nome = nome
    }

    func description () -> String {
        return "Um \(nome) com lados e com angulo de \(angulo) graus"
    }
}
    

let quadrado = Poligono(nome: "Quadrado")
quadrado.description()


class Circle: Poligono {
    
    var raio: Double
    
    init(raio: Double, nome: String) {
        self.raio = raio
        super.init(nome: nome)
    }
    
    func area () -> Double {
        return pow(3.14, 2) * raio
    }
    
    override func description() -> String {
        return "Um \(nome) com área de \(String (format: "%.2f", area())) cm2"
    }
}

var circulo = Circle(raio: 10.0, nome: "Circulo pequeno")
circulo.description()
