import UIKit



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

//Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками


struct Employee {
    var name: String
    var salary: Double
    var position: String
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
    
    var employees: [Employee] = []
    
    func hireNewEmployee(name: String, salary: Double, position: String) {
        let newEmployee = Employee(name: name, salary: salary, position: position)
        employees.append(newEmployee)
    }

}

//Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе

class Table {
    var numberOfSeats: Int
    
    init(numberOfSeats: Int) {
        self.numberOfSeats = numberOfSeats
    }
    
    func isEnoughSeats(for guests: Int) -> Bool {
        return guests <= numberOfSeats
    }
}

//Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра


//class Pizzeria {
//    var tables: [Table] = []
//    
//    init(numberOfTables: Int) {
//        for _ in 1...numberOfTables {
//            let table = Table(pizzeria: self)
//            tables.append(table)
//        }
//    }
//}
//
//class Table {
//    weak var pizzeria: Pizzeria?
//    
//    init(pizzeria: Pizzeria) {
//        self.pizzeria = pizzeria
//    }
//}
