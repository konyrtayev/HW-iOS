//Задание 1
//Вывести в консоль все четные числа от 0 до 100, включая 0

for number in 0 ... 100 where number % 2 == 0{
    print(number)
}

//Задание 2
//Создать две переменных, одна равна 7, другая 20. Если результат перемножения этих переменных больше 10, то вывести в консоль первую переменную, в противном случае вывести вторую.

var a = 7
var b = 20
if a * b > 10 {
    print(a)
} else {
    print(b)
}
//Задание 3
//Создайте переменную “k”, равную 9. В диапазоне от 10 до 50, но только по нечетным числам,, если текущее число плюс “k” четное, то увеличьте  “k” на 2, в противном случае выведите в консоль “Next ” и перейдите к следующей итерации

//var k = 9
//for i in 1 ... 5 where i % 2 != 0 {
//    if (k + i) % 2 == 0{
//        k += 2
//    } else {
//        print("Next")
//        continue
//    }
//}

//Задание 4
//Создайте переменную “k”, равную 9. В диапазоне от 10 до 50, но только по нечетным числам,, если текущее число плюс “k” четное, то увеличьте  “k” на 1, в противном случае выведите в консоль “Next ” прекратите выполнение цикла

var k = 9
for i in 1 ... 5 where i % 2 != 0 {
    if (k + i) % 2 == 0{
        k += 1
    } else {
        print("Next")
        break
    }
}
