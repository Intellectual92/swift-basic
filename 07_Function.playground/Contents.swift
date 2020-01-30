import UIKit

func printName(){
    print("my name is Ji")
}

printName()
    
// 숫자를 입력 받아, 10을 곱해서 출력한다.
func printMultipleOfTen(value: Int){
    print("\(value) * 10 = \(value*10)")
}

printMultipleOfTen(value: 20)


// 물건 값과 개수를 입력으로 주면 전체 금액을 출력하는 함수를 만들어보자
func printTotalPrice(price: Int, count: Int){
    print("Total Price : \(price * count)")
}

printTotalPrice(price: 1500, count: 5)


// External Name 처리
func printTotalPriceExternal(_ price: Int, _ count: Int){
    print("Total Price : \(price * count)")
}

printTotalPriceExternal(1500, 5)


// Default값 설정
func printTotalPriceDefault(price: Int = 1500, count: Int){
    print("Total Price : \(price * count)")
}

printTotalPriceDefault(count: 5)
printTotalPriceDefault(count: 2)
printTotalPriceDefault(count: 3)
printTotalPriceDefault(count: 6)
printTotalPriceDefault(price: 1000, count: 9)


// 값을 리턴하고 싶을때 구조
func totalPrice(price: Int, count: Int) -> Int {
    
    let totalPrice = price * count
    
    return totalPrice
}

let calculateTotalPrice = totalPrice(price: 2000, count: 10)
print("Total Price : \(calculateTotalPrice)")


// Challenge
// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기
func printFullName(lastName: String, firstName: String){
    print("Full Name : \(lastName + " " + firstName)")
}

printFullName(lastName: "JI", firstName: "SUNGIN")


// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기
func printFullNameExternal(_ lastName: String, _ firstName: String){
    print("Full Name : \(lastName + " " + firstName)")
}

printFullNameExternal("HONG", "GILDONG")


// 3. 성, 이름을 받아서 fullname을 return하는 함수 만들기
func returnFullName(lastName: String, firstName: String) -> String {
    
    let fullName = lastName + " " + firstName
    
    return fullName
}

let fullName = returnFullName(lastName: "KIM", firstName: "JINSOO")
print("Full Name : \(fullName)")


// Function Advanced

// Overload : 같은 함수에서 설정이 다를때
func printTotalPrice1(price: Int, count: Int){
    print("Total Price: \(price * count)")
}

func printTotalPrice1(price: Double, count: Double){
    print("Total Price: \(price * count)")
}

func printTotalPrice1(가격: Int, 개수: Int){
    print("총 가격 : \(가격 * 개수)")
}


// In-Out parameter
var value = 3

func incrementAndPrint(_ value: inout Int){
    value += 1
    print(value)
}

incrementAndPrint(&value)


// Function as a variable
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func substract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

var function = add
function(4, 2)
function = substract
function(4, 2)

func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int){
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 7)
printResult(substract, 10, 7)
