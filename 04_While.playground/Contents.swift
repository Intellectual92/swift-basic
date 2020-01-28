import UIKit

// while 조건 {
//    코드 수행
//}

// while은 조건을 먼저 체크하고 코드를 수행하는 반면에 repeat은 코드를 먼저 수행하고 조건을 체크한다.

var i = 10
print(" While")
while i < 10 {
    print("--->", i)
    i += 1
}

print(" Repeat")
i = 10
repeat {
    print("--->", i)
    i += 1
} while i < 10
