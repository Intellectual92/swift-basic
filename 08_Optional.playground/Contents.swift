import UIKit

// Optional
var carName: String? //값이 있을수도 있고 없을수도 있다.
carName = nil
carName = "BMW"


// 여러분의 최애하는 영화배우의 이름을 담는 변수를 작성해주세요 (타입 String?)
// let num = Int("10") num 타입을 예상해보기

var movieStar: String?
movieStar = nil
movieStar = "JURI"

let num = Int("10")


// 고급기능 4가지
// Forced unwrapping optional
// Optional binding
// Guard statement
// Nil coalescing

// Forced unwrapping optional > 억지로 박스를 까보기
// Optional binding > 부드럽게 박스를 까보기
// Guard statement > 부드럽게 박스를 까보기2 (feat. guard)
// Nil coalescing > 박스를 까보았더니 값이 없으면 디폴트 값 줘보자..

print(carName)

// Forced unwrapping optional > 억지로 박스를 까보기 (!)
print(carName!) // 만약 carName에 값이 없다면 에러 발생, 실무에서 권장하지 않음..

// Optional binding > 부드럽게 박스를 까보기
carName = nil
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("car name 없다")
}


func printParseInt(from: String) {
    if let parseInt = Int(from) {
        print(parseInt)
    } else {
        print("컨버팅 안된다ㅜㅜ")
    }
}

printParseInt(from: "50")


// Guard statement > 부드럽게 박스를 까보기2 (feat. guard)
func printParseIntGuard(from: String) {
    // guard 문을 통해 false일때를 먼저 처리
    guard let parseInt = Int(from) else{
        print("컨버팅 안된다ㅜㅜ")
        return
    }
    print(parseInt)
}

printParseIntGuard(from: "50")


// Nil coalescing > 박스를 까보았더니 값이 없으면 디폴트 값 줘보자.. (??)
carName = nil

let myCarName = carName ?? "TESLA" // 삼항 연산자스러운 느낌..
myCarName


// Challenge
// 최애 음식을 담는 변수를 작성하고 (String?), optional binding을 이용해서 값을 확인해보기
var myFavorFood: String? = nil
if let foodName = myFavorFood {
    print("좋아하는 음식 : \(foodName)")
} else {
    print("좋아하는 음식 없음")
}


// 닉네임을 받아서 출력하는 함수 만들어보기 입력 파라미터 String?
func printNickname(nickname: String?) {
    guard let nick = nickname else{
        print("No Nickname")
        return
    }
    print("Nick name is \(nick)")
}

printNickname(nickname: nil)
printNickname(nickname: "JI")
