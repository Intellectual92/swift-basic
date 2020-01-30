import UIKit

// Collection (Array, Dictionary, Set)

// 1. Array
// 같은 타입들끼리 담아야 한다.
// 순서가 있다. (인덱스)
// 순서가 있는 아이템, 아이템의 순서를 알면 유용할때 주로 사용

var evenNumbers: [Int] = [2, 4, 6, 8]
var evenNumbers2: Array<Int> = [2, 4, 6, 8]

// 아이템 추가
evenNumbers.append(10)
evenNumbers += [12, 14, 16]

// 빈 Array 여부
evenNumbers.isEmpty
//evenNumbers = []
//evenNumbers.isEmpty

// 아이템 인덱스에 접근
print(evenNumbers.first) // Optional인 이유는 값이 있을수도 / 없을수도 있기 때문
evenNumbers[1]

evenNumbers.count // 아이템 개수
evenNumbers.min() // 값이 제일 작은 수
evenNumbers.max() // 값이 제일 큰 수
evenNumbers[0...3] // 특정 범위
evenNumbers.contains(3) // 포함 여부

evenNumbers.insert(0, at: 0) // 특정 위치(at)에 값을 추가
evenNumbers.remove(at: 0) // 특정 위치(at)에 값을 제거
//evenNumbers.removeAll() // 전체삭제

evenNumbers[0] = -2 // 값 변경
evenNumbers

evenNumbers[0...2] = [-2, 0, 2] // 여러개의 값 변경
evenNumbers

evenNumbers.swapAt(1, 2) // 인덱스를 통해 위치를 swap함


// For문과 함께 사용!
for num in evenNumbers {
    print(num)
}

for (index, num) in evenNumbers.enumerated(){
    print(index, num)
}



// 2. Dictionary
// 순서가 없고 Key:value 한쌍으로 이뤄짐

var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
//var scoreDic2: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]
print(scoreDic)

scoreDic["Jason"]
scoreDic["Jerry"]

scoreDic.isEmpty
scoreDic.count

scoreDic["Jason"] = 99 // 값을 변경
scoreDic["Jason"]

scoreDic["Jack"] = 100 // 값을 추가
print(scoreDic)

scoreDic["Jack"] = nil // key와 value가 같이 사라짐
print(scoreDic)

// For문과 함께 사용!
for (name, score) in scoreDic {
  print("\(name) : \(score)")
}


// Challenge!
// 1) 이름, 직업, 도시에 대해서 본인의 딕셔너리를 만들어보기
var myInformation: [String: String] = ["name": "JI", "job": "developer", "city": "HW"]

// 2) 여기서 도시를 부산으로 업데이트
myInformation["city"] = "Busan"

// 3) 딕셔너리를 받아서 이름과 도시 출력하는 함수 만들기
func printNameCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"] {
        print("name : \(name), city : \(city)")
    } else {
        print("cannotFound")
    }
}

printNameCity(dic: myInformation)



// 3. Set (집합)
var someArray: Array<Int> = [1, 2, 3, 1]
var someSet: Set<Int> = [1, 2, 3, 1]

someSet.contains(1)
someSet.contains(11)

someSet.insert(5) // 아이템 입력
someSet.remove(1) // 아이템 제거
someSet
