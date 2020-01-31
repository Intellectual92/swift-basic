import UIKit

// Class와 Structure는 많이 닮았다.

// structure는 initialize가 디폴트로 구성된다.
struct PersonStruct {
    var firstName: String
    var lastName: String
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

// class는 initialize를 작성해야한다.
class PersonClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}


// class와 structure 차이점
// class - reference types, share, objects, mutable, slower(heap)
// structure - value types, copy, value, immutable, fast(stack)

// reference는 쉽게생각해서 주소라고 생각하면 된다.
// structure는 값을 찍어냄 (각각의 값이 독립적이 되버린다.)

// 아이맥이 있다고 가정
// class의 경우는 a1, a2가 같은 아이맥을 사고싶다고 가리키는 느낌 (둘다 IMAC)
// structure의 경우는 각각 구입해서 독립적인 아이맥을 소유하는 느낌 (a1's IMAC, a2's IMAC)

var person1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var person2 = person1

person1.firstName = "Jay"
person1.firstName
person2.firstName

var person3 = PersonClass(firstName: "Jason", lastName: "Lee")
var person4 = person3

person3.firstName = "Jay"
person3.firstName
person4.firstName


// 언제 class와 struct를 사용해야 할까?
// 1. value vs object
// 2. speed - 여러 개의 인스턴스를 생성해야 한다, 짧은 기간 및 시간에만 존재한다 (structure)
// 3. struct first



// class (상속)
struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func printMyName() {
        print("My Name is \(firstName) \(lastName)")
    }
}

// Grade 클래스와 Person 클래스와 중복되는 코드를 해결할 수 없을까? - 상속개념 도입
//class Student {
//    var firstName: String
//    var lastName: String
//    var grades: [Grade] = []
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My Name is \(firstName) \(lastName)")
//    }
//
//    func recordGrade(_ grade: Grade) {
//        grades.append(grade)
//    }
//}


// Person :  Base class (Super class, Parent class)
// Student :  SubClass
class Student: Person {
    var grades: [Grade] = []
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}

let jay = Person(firstName: "Jay", lastName: "Lee")
let jason = Student(firstName: "Jason", lastName: "Lee")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()


let math = Grade(letter: "B", points: 8.5, credits: 3.0)
let history = Grade(letter: "A", points: 10.5, credits: 3.5)
jason.recordGrade(math)
jason.recordGrade(history)

jason.grades.count


// SubClass Rule
// 1개의 Base Class만 상속받을 수 있다.
// 상속의 깊이는 상관 없다.

class StudentAthlete: Student {
    var minimunTraningTime: Int = 2
    var trainedTime: Int = 0
    
    func train(){
        trainedTime += 1
    }
}

class FootballPlayer: StudentAthlete {
    var footballTeam = "FC Swift"
    
    // 가존에 상속받은 함수중에서 변경시키고 싶을 때
    override func train() {
        trainedTime += 2
    }
}

var athlet1 = StudentAthlete(firstName: "YN", lastName: "KIM")
athlet1.trainedTime
athlet1.train()
athlet1.trainedTime

var athlet2 = FootballPlayer(firstName: "HM", lastName: "SON")
athlet2.trainedTime
athlet2.train()
athlet2.trainedTime
athlet2.footballTeam


// Person클래스를 상속받음
func printFirstName(_ person: Person){
    print("---> First Name: \(person.firstName)")
}

printFirstName(athlet1)
printFirstName(jay)

// upper casting - 자식 클래스가 부모 클래스처럼 사용
athlet1 = athlet2 as StudentAthlete
athlet1.train()
athlet1.trainedTime
//athlet1.footballTeam

// down casting - 부모 클래스가 자식 클래스처럼 사용
if let son = athlet1 as? FootballPlayer {
    print("---> name: \(son.lastName), team \(son.footballTeam)")
}


// 상속은 언제 사용하는걸까?
// Single Responsibility
// Type Safety
// Shared Base Classes
// Extensibility
// Identity


