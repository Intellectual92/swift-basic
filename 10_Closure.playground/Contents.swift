import UIKit

// Closure : 이름없는 메소드랄까..
var multiplyClosure: (Int, Int) -> Int = { a, b in
    return a * b
}

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}

let result = multiplyClosure(4, 2)


func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)
operateTwoNum(a: 4, b: 2, operation: addClosure)
operateTwoNum(a: 4, b: 2, operation: {a, b in
    return a/b
    
})


let voidClosure: () -> Void = {
    print("ios Developer 짱짱스!!")
}

voidClosure()


var count = 0
let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()
incrementer()
count


// Closure & Collection

let scores = [80, 90, 75, 99]
scores.sorted()

// sorted는 클로저를 제공하고 커스터마이징이 가능
scores.sorted{ a, b -> Bool in
    return a>b
}

let prices = [1500, 30000, 2000, 20000]

let largePrices = prices.filter({ price -> Bool in
    return price > 10000
})

let salesPrices = prices.map{ price -> Int in
    return Int(Double(price) * 0.1)
}

let sum = prices.reduce(0) { result, price -> Int in
    return result + price
}

let items = [1500: 5, 30000: 1, 2000: 3, 20000: 2]

let totalPrice = items.reduce(0) { result, item -> Int in
    return result + item.key * item.value
}


// Challenge!
// 1. 이름의 Array 생성하고, reduce를 이용해서 이름 모두 연결
let names = ["PARK", "SON", "BEAK", "LEE", "KI"]

let nameConnect = names.reduce("") { result, name -> String in
    return result + " " + name
}

// 2. 1에서 생성된 array에서 글자가 3개 이상인 이름 filter로 걸러내고, 걸러낸 이름을 reduce를 이용해서 연결하기
let nameFilters = names.filter{ name -> Bool in
    return name.count > 3
}

let nameConnectFilters = nameFilters.reduce("") { result, name -> String in
    return result + " " + name
}

// 3. 학생 디셔너리 생성 (key는 이름, value는 나이), filter를 이용해서 20세 이상인 학생만 걸러내기
let students: [String : Int] = ["PARK": 15, "SON": 20, "BEAK": 25, "LEE": 30, "KI": 35]

let studentsFilter = students.filter { student -> Bool in
    return student.value >= 20
}

// 4. 3번에서 걸러낸 학생들... map을 이용해서 이름만 Array 만들기
let studentsMap = studentsFilter.map{ student -> String in
    return student.key
}
