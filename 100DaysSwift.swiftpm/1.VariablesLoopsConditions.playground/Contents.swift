print("Hello, world!")

// var e Let

var numero: String = "4"

let label = "the value is"
let value = 4
let result = label + String(value)


let orange = 4
let apple = 5
let fruit = "I have \(orange + apple) fruits"

// array e dicionário

var fruits = ["apple", "banana", "melao"]
fruits.append("massaranduba")

var cargos = ["João": "Mecanico",
              "Maria": "Engenheira"]

cargos["João"]

let emptyarray: [String] = []
var emptydictionary: [String: Float] = [:]

emptydictionary["João"] = 4


let nickname: String? = "Rod"
let padrao = "Usuário"
let frase = "Olá, \(nickname ?? padrao), seja bem vindo!"

// switches e ifs

let vinho: String? = nil

switch vinho {
    case "Tinto":
        print("Tinto é bom pra tomar e ficar burro")
    
    case "Branco":
        print("Vinho Branco é coisa de viado")
    
    default:
        print("até gasolina eu bebo")
    
}

// loops

let numeroslegais = [ "Primo": [2, 3, 5, 7, 11],
                      "Fibonacci": [1, 1, 2, 3, 5, 8, 15]
]

var largest = 0

for (_, numbers) in numeroslegais {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
    


var total = 1
while total < 100 {
    total *= 2
    print(total)
}

var soma = 0
for c in 0...10 {
    soma += c
}
print(soma)


let tuple = (404, "Page not found")
let (errorNum, errorType) = tuple

print(errorNum)
print(errorType)

let tuple2 = (404, "Page not found")
print(tuple.0, tuple.1)

