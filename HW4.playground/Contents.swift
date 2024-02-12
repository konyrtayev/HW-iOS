import UIKit

//Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)

enum Pizza: String {
    case peperoni = "Peperoni"
    case margarita = "Margarita"
    case diablo = "Diablo"
    case four_season = "Four Season"
    case cheese = "Cheese"
}
enum Supplement: String {
    case tomato = "Tomato"
    case jalapeno = "Jalapeno"
    case sousage = "Sousage"
    case cheese = "Cheese"
}
//enum Dough: String {
//    case thin = "Thin"
//    case thick = "Thick"
//}
//Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.

struct Pizze {
    let pizzaType: Pizza
    let pizzaCost: Double
    let pizzaDough: String
    let pizzaAdditives: Supplement
}

var newPizza = Pizze(pizzaType: .four_season, pizzaCost: 45, pizzaDough: "Thin", pizzaAdditives: .tomato)

//print(newPizza.pizzaAdditives)

//Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.

class Pizzeria {
    private var pizzaList: [Pizze]
    
    init(pizzaList: [Pizze]) {
        self.pizzaList = pizzaList
    }
    func addPizza(pizza: Pizze) {
            pizzaList.append(pizza)
        }
        
        func getAllPizzas() -> [Pizze] {
            return pizzaList
        }
}
        //Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
        //Создать экземпляр класса пиццерии и добавить в него несколько пицц.
    
