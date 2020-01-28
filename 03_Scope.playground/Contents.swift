import UIKit

// 전체 scope
var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {
    // extrHours는 내부 조건문에만 사용할 수 있다.
    let extraHours = hours - 40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
}

salary += hours * payPerHour
