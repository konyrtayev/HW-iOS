import Foundation
//Условие:
//Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой  процент, третий аргумент это срок. Функция возвращает сколько денег получит пользователь по итогу

func profit(infest: Float, percent: Float, period: Float) -> Float {
    (pow(1 + (percent / 100),period)) * infest
}
print(profit(infest: 500, percent: 10, period: 15))

//Создать перечисление, которое содержит 3 вида пиццы и создать  переменные с каждым видом пиццы.

enum Pizza: String {
    case peperoni = "Peperoni"
    case margarita = "Margarita"
    case diablo = "Diablo"
}
var sausage: Pizza = .peperoni
var tomato: Pizza = .margarita
var peper: Pizza = .diablo

//Добавить возможность получения названия пиццы через  rawValue

func getName(pizza: Pizza) -> String {
    pizza.rawValue
}
print(getName(pizza: .diablo))
print(getName(pizza: .margarita))
print(getName(pizza: .peperoni))

