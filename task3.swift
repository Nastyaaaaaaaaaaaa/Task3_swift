import Foundation

// 1. Сортировка массива с помощью замыкания
var numbers = [5, 2, 9, 1, 5, 6]

// Сортировка в одну сторону (по возрастанию)
let sortedAscending = numbers.sorted { $0 < $1 }
print("Отсортированный массив по возрастанию: \(sortedAscending)")

// Сортировка в обратную сторону (по убыванию)
let sortedDescending = numbers.sorted { $0 > $1 }
print("Отсортированный массив по убыванию: \(sortedDescending)")

// 2. Метод для добавления имен друзей в массив
func addFriends(names: [String]) -> [String] {
    var friends = [String]()
    friends.append(contentsOf: names)
    return friends
}

// Пример использования метода
let friendsList = addFriends(names: ["Алексей", "Мария", "Дмитрий", "Светлана", "Иван"])

// 3. Сортировка имен по количеству букв
let sortedFriends = friendsList.sorted { $0.count < $1.count }
print("Отсортированные имена по количеству букв: \(sortedFriends)")

// 4. Создание словаря с количеством символов в имени
var friendsDictionary: [Int: String] = [:]
for friend in sortedFriends {
    friendsDictionary[friend.count] = friend
}

// 5. Функция для вывода ключа и значения из словаря
func printFriendByKey(key: Int) {
    if let friend = friendsDictionary[key] {
        print("Ключ: \(key), Имя: \(friend)")
    } else {
        print("Имя с ключом \(key) не найдено.")
    }
}

// Пример использования функции
printFriendByKey(key: 7) // Пример для имени "Дмитрий"

// 6. Функция для проверки массивов на пустоту
func checkAndAddValues(stringArray: inout [String], numberArray: inout [Int]) {
    if stringArray.isEmpty {
        stringArray.append("Пусто")
    }
    
    if numberArray.isEmpty {
        numberArray.append(0)
    }
    
    print("Строковый массив: \(stringArray)")
    print("Числовой массив: \(numberArray)")
}

// Пример использования функции
var emptyStringArray: [String] = []
var emptyNumberArray: [Int] = []

checkAndAddValues(stringArray: &emptyStringArray, numberArray: &emptyNumberArray)
