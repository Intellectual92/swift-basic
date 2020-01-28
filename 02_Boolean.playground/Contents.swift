import UIKit

// Boolean

let yes = true
let no = false

let isFourGraterThanfive = 4 > 5

if isFourGraterThanfive {
    print("참이다 ")
} else {
    print("거짓이다 ")
}


let a = 5
let b = 10

if a > b {
    print("a win")
} else {
    print("b win")
}

let name1 = "Jin"
let name2 = "Jason"

let isTwoNameSame = (name1 == name2)

if isTwoNameSame {
    print(" 같은 이름이네?")
} else{
    print(" 다른 이름이네?")
}

let isJson = name2 == "Jason"

let jasonAndSameNAme = isTwoNameSame && isJson
let jasonOrSameNAme = isTwoNameSame || isJson


var title = ""

// 일반적은 if문
if isJson {
    title = "JASON CEO"
} else {
    title = "Other CEO"
}

// 삼항 연산자를 사용하면 코드가 깔끔해진다.
// 구조 - 조건 ? 참인 경우의 값 : 거짓인 경우의 값
title = isJson ? "JSON CEO" : "Ohter CEO"
