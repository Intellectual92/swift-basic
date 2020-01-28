import UIKit
import Foundation // sin 그래프 그리기 위해서

// range data type
let closedRange = 0...10 // 0부터 10까지
let halfOpenRange = 0..<10 // 0부터 9까지

var sum = 0

for i in closedRange {
    print("--->", i)
    sum += i
}

print("Total sum : ", sum)


// sinValue가 CGFloat의 타입으로 지정한다는 의미
var sinValue: CGFloat = 0
for i in closedRange {
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}


// 반복할껀데 i를 안쓸꺼면 _(언더스코어)로 대체해라!
let name = "Joon"
for _ in closedRange {
    print("---> \(name)")
}


// where 문을 사용하면 기존의 조건문을 좀 더 깔끔하게 표현할 수 있다.
for i in closedRange{
    if i % 2 == 0{
        print("--->", i)
    }
}

for i in closedRange where i % 2 == 0 {
    print("--->", i)
}


// break를 사용하면 루프문이 종료된다.
for i in closedRange {
    if i == 5 {
        break
    }
    print("--> \(i)")
}


// continue를 사용하면 건너뛰기가 가능하다.
for i in closedRange {
    if i == 5 {
        continue
    }
    print("--> \(i)")
}


// 이중 for문도 가능하다. (권장 X)
for i in closedRange{
    for j in closedRange {
        print("gugu ---> \(i) * \(j) = \(i*j)")
    }
}
