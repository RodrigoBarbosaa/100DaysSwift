func almoco (_ nome: String, _ desejo: String) -> String {
    var resultado = "x"
    
    switch desejo {
        case "lasanha":
            resultado = "Olá, \(nome). Temos lasanha para o almoço!"
        case "strogonoff":
            resultado = "\(nome), temos strogonoff de frango para o almoço!"
        default:
            resultado = "\(nome), temos apenas lasanha e strogonoff para o almoço."
        }
    return resultado
}

var result = almoco("Rodrigo", "macarrao")


func calcular (numeros: [Int]) -> (soma: Int, max: Int, min: Int) {
    
    var soma = 0
    var min = numeros[0]
    var max = numeros[0]
    
    for numero in numeros {
        if numero > max {
            max = numero
        } else if numero < min {
            min = numero
        }
        soma += numero
    }
    return(soma, max, min)
}

calcular(numeros: [2, 4, 6, 8, 10])


// função que retorna outra função
func makeIncrementer() -> ((Int) -> Int) {
    func addTwo(number: Int) -> Int {
        return number + 2
    }
    return addTwo
}

// agora increment é uma função
var increment = makeIncrementer()
increment(7)
increment(8)

// função que aceita função como parâmetro
func match (list: [Int], condicao: (Int) -> Bool) -> [String] {
    
    var listaresultado: [String] = []
    
    for numero in list {
        if condicao(numero) {
            listaresultado.append("There´s a match! \(numero) < 10")
        }
    }
    if listaresultado.isEmpty {
        listaresultado.append("Não houve combinações")
    }
    
    return listaresultado
}

func menorQueDez (numero: Int) -> Bool {
    return numero < 10
}

let lista = [10, 30, 40, 50]

match(list: lista, condicao: menorQueDez)


let multiplicar = lista.map ({ number in 2 * number})
print(multiplicar)

