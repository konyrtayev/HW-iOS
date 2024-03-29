import UIKit

//Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить ее в виде массива видов чая, которые хотят заказать). Необходимо последовательно выводить в консоль сколько заплатит покупатель ( необходимо вывести его номер по порядку, чай, который он заказал и стоимость)

let teaDict: [String: Int] = ["черный": 250, "зеленый": 400, "цветочный": 530]
let client: [String] = ["черный", "черный", "зеленый", "черный", "цветочный"]

for (index, tea) in client.enumerated() {
    if let price = teaDict[tea] {
        let customerNumber = index + 1
        print("Покупатель №\(customerNumber): заказал '\(tea)' чай. Стоимость: \(price) тенге.")
    } else {
        print("Покупатель №\(index + 1): заказал неизвестный чай '\(tea)'")
    }
}


//Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию

var a: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
var b = a.compactMap {$0}.filter{$0 != 0 && $0 != 4}.sorted{$0 < $1}
print(b)

//Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.

func generateArray(_ num: Int) -> [Int] {
    var result = [Int]()
    var value = 1
    for _ in 1...num {
        result.append(value)
        value *= 2
    }
    return result
}
let num = 7
let array = generateArray(num)
print(array)
