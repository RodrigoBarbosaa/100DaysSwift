enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten, jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        
        case .jack:
            return "jack"
            
        case .queen:
            return "queen"
            
        case .king:
            return "king"
            
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
ace.rawValue
ace.simpleDescription()



enum Suit {
    case spades, hearts, diamonds, club
    
    func simpleDescription() -> String {
        
        switch self {
        case .club:
            return "club"
        case .diamonds:
            return "diamonds"
        case .hearts:
            return "hearts"
        case .spades:
            return "spades"
        }
    }
    
    func color() -> String {
        
        switch self {
        case .club:
            return "black"
        case .hearts:
            return "red"
        case .spades:
            return "black"
        case .diamonds:
            return "red"
        }
    }
}

let hearts = Suit.hearts
hearts.simpleDescription()
hearts.color()



struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()), of \(suit.simpleDescription()) "
    }
}

let cartaTres = Card(rank: .three, suit: .diamonds)
cartaTres.simpleDescription()


enum ServerResponse {
    case result(String, String)
    case failure(String)
}


let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
    
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
    
case let .failure(message):
    print("Failure...  \(message)")
}
