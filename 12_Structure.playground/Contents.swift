import UIKit

// Structure

// 완료 내용
// 거리 구하기
func distance(current: Location, target: Location) -> Double {
    // 피타고라스
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    
    return distance
}

struct Location {
    let x: Int
    let y: Int
}

struct Store {
    let loc: Location
    var name: String
    let deliveryRange = 2.0
    
    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = distance(current: userLoc, target: loc)
        
        return distanceToStore < deliveryRange
    }
}

// 스토어 위치 좌표 및 이름
let store1 = Store(loc: Location(x:3, y:5), name: "gs")
let store2 = Store(loc: Location(x:4, y:6), name: "seven")
let store3 = Store(loc: Location(x:1, y:7), name: "cu")


// Given printClosesStore func
func printClassStore(currentLocataion:Location, stores:[Store]) {
    var closetStoreName = ""
    var closetStoreDistance = Double.infinity
    var isDeliverable = false
    
    for store in stores {
        let distanceToStore = distance(current: currentLocataion, target: store.loc)
        closetStoreDistance = min(distanceToStore, closetStoreDistance)
        if closetStoreDistance == distanceToStore {
            closetStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocataion)
        }
    }
    print("Closet store: \(closetStoreName) deliverable: \(isDeliverable)")
}


// Set stores and myLocation
let stores = [store1, store2, store3]
let myLocation = Location(x: 2, y: 5)

// Use printClosetStore func to print
printClassStore(currentLocataion: myLocation, stores: stores)

// Improve code
// - make Location struct
// - make Store struct


var storeNearBy1 = Store(loc: Location(x:3, y:5), name: "GS")
var storeNearBy2 = storeNearBy1

storeNearBy1.name = "CU"
storeNearBy1.name
storeNearBy2.name // 이미 할당됐기 때문에 1이 변경됐다고 변경되지 않는다.


// Challenge
// 1. 강의 이름, 강사 이름, 학생 수를 가지는 Struct 만들기 (Lecture)
struct Lecture {
    let name: String
    let instructor : String
    let numOfStudent : Int
}

// 2. 강의 Array와 강사 이름을 받아서, 해당 강사의 강의 이름을 출력하는 함수 만들기
func printLectureName(from instructor: String, lectures: [Lecture]) {
    var lectureName = ""
    
    for lecture in lectures {
        if instructor == lecture.instructor {
            lectureName = lecture.name
        }
    }
    
    print("lecture name is \(lectureName)")
}
// 3. 강의 3개 만들고 강사 이름으로 강의 찾기
let lec1 = Lecture(name: "IOS BASIC", instructor: "Jason", numOfStudent: 5)
let lec2 = Lecture(name: "IOS Advanced", instructor: "Jack", numOfStudent: 3)
let lec3 = Lecture(name: "IOS Pro", instructor: "Jim", numOfStudent: 2)

let lectures = [lec1, lec2, lec3]

printLectureName(from: "Jim", lectures: lectures)
