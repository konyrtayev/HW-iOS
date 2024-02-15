import UIKit

//В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.

protocol PizzeriaProtocol {
    var name: String { get }
    var cost: Double { get }
}

struct Pizze: PizzeriaProtocol {
    var name: String
    
    var cost: Double
    
    
    enum Pizza: String {
        case peperoni = "Peperoni"
        case margarita = "Margarita"
        case diablo = "Diablo"
        case four_season = "Four Season"
        case cheese = "Cheese"
    }
    
    var pizzaType: Pizza
    var pizzaCost: Double
    var pizzaDough: String
    var pizzaAdditives: Supplement
}

enum Supplement: String {
    case tomato = "Tomato"
    case jalapeno = "Jalapeno"
    case sousage = "Sousage"
    case cheese = "Cheese"
}
enum Size{
    case s
    case m
    case l
}

struct FrenchFries: PizzeriaProtocol {
    var size: Size
    var cost: Double
    var name: String
}


class Pizzeria {
    var pizzaList: [PizzeriaProtocol]
    
    init(pizzaList: [PizzeriaProtocol]) {
        self.pizzaList = pizzaList
    }
    func addPizza(pizza: Pizze) {
            pizzaList.append(pizza)
        }
        
        func getAllPizzas() -> [PizzeriaProtocol] {
            pizzaList
        }
    func add(_ new: PizzeriaProtocol ) {
        pizzaList.append(new)
    }

}


//Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.

//func add(_ new: PizzeriaProtocol ) {
//    pizzaList.append(new)
//}


//Создайте протокол, в котором будут содержаться функции открытия и закрытия.

protocol WorkableProtocol {
    func open()
    func close()
}

//Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.

extension Pizzeria: WorkableProtocol {
    func open() {
        print("Open")
    }
    
    func close() {
        print("Close")
    }
}

//Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.

func vichet<T: Numeric>(a: T, b: T) -> T {
    a - b
}
