import UIKit

let num = 10

// switch는 생길수 있는 모든 케이스를 정의해줘야 한다.
// 케이스가 너무 많다면 default로 나머지 모든 케이스를 정의할 수 있다.
switch num {
case 0:
    print("--> 0 입니다")
case 10:
    print("--> 10 입니다")
default:
    print("--> 나머지")
}


let pet = "dog"

switch pet {
case "dog", "cat":
    print("---> 이것은 house pet 입니다")
default:
    print("---> 모르는 동물입니다 ")
}


// where문과의 조합도 가능하다
switch num {
case _ where num % 2 == 0:
    print("---> 짝수 ")
default:
    print("---> 홀수 ")
}


// coordinate
let coordinate = (x:1, y:5)

switch coordinate {
case (0, 0):
    print("---> 기준점")
case (_, 0):
    print("---> 점이 x축에 있음")
case (0, _):
    print("---> 점이 y축에 있음")
default:
    print("---> 어딘가에 있는 좌표")
}


// coordinate에서 인자를 가져오기
switch coordinate {
case (0, 0):
    print("---> 기준점")
case (let x, 0):
    print("---> 점이 x축에 있음 x : \(x)")
case (0, let y):
    print("---> 점이 y축에 있음 y : \(y)")
case (let x, let y) where x == y:
    print("---> x와 y가 같아요!")
case (let x, let y):
    print("---> 어딘가에 있는 좌표 x : \(x), y : \(y)")
}
