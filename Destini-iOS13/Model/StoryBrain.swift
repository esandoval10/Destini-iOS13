import Foundation

struct StoryBrain {
    
    let script = [
        Story(
            title: "Un neumático de tu auto se ah reventado en un camino sinuoso en el medio de la nada y no tiene recepción tu celular. Decides pedir un aventón. Una camioneta oxidada retumba y se detiene a tu lado. Un hombre con un sombrero de ala ancha y ojos desalmados te abre la puerta del pasajero y pregunta: '¿Necesitas un aventón, bebé?'.",
            choiceOne: "Entrare ¡Gracias por la ayuda!", choiceTwo: "Mejor pregúntale si es un asesino primero.", choiceOneDestination: 2, choiceTwoDestination: 1
        ),
        Story(
            title: "Él asiente lentamente, imperturbable ante la pregunta.",
            choiceOne: "Al menos es honesto. Subiré", choiceTwo: "Espera, sé cómo cambiar un neumático.", choiceOneDestination: 2, choiceTwoDestination: 3
        ),
        Story(
            title: "Cuando comienzas a conducir, el extraño comienza a hablar sobre su relación con su madre. Se enoja más y más cada minuto. Te pide que abras la guantera. En el interior encuentras un cuchillo ensangrentado, dos dedos cortados y una cinta de cassette de Elton John. El alcanza la guantera.",
            choiceOne: "¡Amo a Elton John! Dale la cinta de cassette.", choiceTwo: "¡Es él o yo! Tomas el cuchillo y lo apuñalas.", choiceOneDestination: 5, choiceTwoDestination: 4
        ),
        Story(
            title: "¿Qué? ¡Qué aburrido! ¿Sabías que los accidentes de tráfico son la segunda causa principal de muerte accidental para la mayoría de los grupos de edad adulta?",
            choiceOne: "Fin", choiceTwo: "Fin", choiceOneDestination: 0, choiceTwoDestination: 0
        ),
        Story(
            title: "Mientras atraviesas la barandilla y caminas hacia las rocas irregulares debajo de ti, reflexionas sobre la dudosa sabiduría de apuñalar a alguien mientras conduce un automóvil en el que estás.",
            choiceOne: "Fin", choiceTwo: "Fin", choiceOneDestination: 0, choiceTwoDestination: 0
        ),
        Story(
            title: "Te unes al asesino mientras cantas versos de '¿Puedes sentir el amor esta noche?' Te deja en la siguiente ciudad. Antes de ir, él te pregunta si conoces algún buen lugar para arrojar cuerpos. Respondes: 'Prueba el muelle'.",
            choiceOne: "Fin", choiceTwo: "Fin", choiceOneDestination: 0, choiceTwoDestination: 0
        )
    ]
    
    var currentDestination = 0
    
    func getTitleText() -> String {
        return script[currentDestination].title
    }
    
    func getChoices(_ choiceAt : Int) -> String {
        switch choiceAt {
        case 1:
            return script[currentDestination].choiceOne
        case 2:
            return script[currentDestination].choiceTwo
        default:
            return "Error: Unknown Choice"
        }
    }
    
    mutating func choiceEffect(_ playerChoice : String) {
        if playerChoice == script[currentDestination].choiceOne {
            currentDestination = script[currentDestination].choiceOneDestination
        }
        else {
            currentDestination = script[currentDestination].choiceTwoDestination
        }
    }
}
