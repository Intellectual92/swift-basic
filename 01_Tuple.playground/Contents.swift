import UIKit

// var str = "Hello, playground"
// let randomNum = arc4random_uniform(100)

/*
 여러줄을 주석처리할때
 이렇게 처리하면 된다.
*/

// Tuple
let coordinates = (4, 6)

let x = coordinates.0 // coordinates의 0번째
let y = coordinates.1 // coordinates의 1번째


// 좀 더 명시적으로 표현하면 좋다.
let coordinatesNamed = (x:4, y:6)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y


// 변수값을 한꺼번에 넣을 때 유리한 방법이다.
let (x3, y3) = coordinatesNamed
x3
y3
