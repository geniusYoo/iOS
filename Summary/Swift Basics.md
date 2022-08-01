# Swift 강의자료

# :: 명명법 / 콘솔로그 / 문자열 보간법 ::

## **1. 명명법**

- **Lower Camel Case** : fuction, method, variable, constant

ex.) someVariableName

- **Upper Camel Case** : type(class, struct, enum, extension…)

ex.) Person, Point, Week

- `Swift는 모든 대소문자를 구분합니다.`

## **2. 콘솔로그 남기기**

- **print 함수** : 단순 문자열 출력
- **dump 함수** : 인스턴스의 자세한 설명(description 프로퍼티)까지 출력

## **3. 문자열 보간법 (String Interpolation)**

- 프로그램 실행 중 문자열 내에 변수 또는 상수의 실질적인 값을 표현하기 위해 사용.
    
    `\()`
    

# :: 상수와 변수 ::

**1. 상수와 변수 선언**

- **let** : ****상수 선언 키워드
- **var** : ****변수 선언 키워드

```swift
// 상수와 변수 선언
let 상수이름: 타입 = 값
var 변수이름: 타입 = 값

// 값의 타입이 명확하다면 타입 생략 가능
let 상수이름 = 값
var 변수이름 = 값

// 상수와 변수 활용
let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
// constant = "상수는 차후에 값을 변경할 수 없습니다" // 오류발생
```

**2. 상수 선언 후, 값 할당하기**

- 선언을 한 뒤, 나중에 값을 할당하려는 상수나 변수는 반드시 타입을 명시해야 합니다.

```swift
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB

// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없습니다, 오류발생

// 변수도 물론 차후에 할당하는 것이 가능합니다
var nickName: String

nickName = "yagom"

// 변수는 차후에 다시 다른 값을 할당해도 문제가 없지요
nickName = "야곰"
```

**3. 생각해보기**

다음과 같은 경우에 각 값은 상수와 변수 중 어느 것으로 선언하는 것이 더 좋을지 생각해 봅시다.

```swift
var name = "yagom"
var numberToAdd = 5
let pi = 3.14159
var maxItemCount = 1000
```

# :: 기본 데이터 타입 ::

# **1. Swift의 기본 데이터 타입**

- Bool
- Int, UInt
- Float, Double
- Character, String

**2. Bool**

- true와 false만을 값으로 가지는 타입

```swift
var someBool: Bool = true
someBool = false
// someBool = 0 // 컴파일 오류발생
// someBool = 1 // 컴파일 오류발생
```

**3. Int, UInt**

- **Int** : 정수 타입. 현재는 기본적으로 64비트 정수형
- **UInt** : 양의 정수 타입. 현재는 기본적으로 64비트 양의 정수형.

```swift
// Int
var someInt: Int = -100
// someInt = 100.1 // 컴파일 오류발생

//UInt
var someUInt: UInt = 100
// someUInt = -100 // 컴파일 오류발생
// someUInt = someInt // 컴파일 오류발생
```

**4. Float, Double**

- **Float** : 실수 타입. 32비트 부동소수형.
- **Double :** 실수 타입. 64비트 부동소수형.

```swift
// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat // 컴파일 오류발생
```

**5. Character, String**

- **Character** : 문자 타입. 유니코드 사용. **큰따옴표("")** 사용.
- **String** : 문자열 타입. 유니코드 사용. **큰따옴표("")** 사용.

```swift
// Character
var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" // 컴파일 오류발생
print(someCharacter)

// String
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)

// someString = someCharacter // 컴파일 오류발생
```

**6. 생각해보기**

다음 코드에서 integer, floatingPoint, apple 상수는 각각 어떤 타입이 될까요? 생각해보고 확인해보세요~!

```swift
let integer = 100 // int
let floatingPoint = 12.34 // float
let apple = "A" // character

-------------------------------------
print(type(of:integer))
print(type(of:floatingPoint))
print(type(of:apple))

//Print

Int
Double
String
```

# **:: Any, AnyObject, nil ::**

- Any - Swift의 모든 타입을 지칭하는 키워드
- AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
- nil - '없음'을 의미하는 키워드

**1. Any**

- Swift의 모든 타입을 지칭하는 키워드

```swift
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

// Any 타입에 Double 자료를 넣어두었더라도 Any는 Double 타입이 아니기 때문에 할당할 수 없습니다.
// 명시적으로 타입을 변환해 주어야 합니다. (타입 변환은 차후에 다룹니다.)
let someDouble: Double = someAny  // 컴파일 오류발생
```

**2. AnyObject**

- 모든 클래스 타입을 지칭하는 프로토콜

(클래스와 프로토콜에 대한 설명은 차후에 합니다.)

```swift
class SomeClass {}
var someAnyObject: AnyObject = SomeClass()

// AnyObject는 클래스의 인스턴스만 수용 가능하기 때문에 클래스의 인스턴스가 아니면 할당할 수 없습니다.
someAnyObject = 123.12    // 컴파일 오류발생
```

**3. nil**

- 없음을 의미하는 키워드
- 다른 언어의 NULL, Null, null 등과 유사한 표현입니다.

```swift
// someAny는 Any 타입이고, someAnyObject는 AnyObject 타입이기 때문에 nil을 할당할 수 없습니다.
var someAny: Any = 100
var someAnyObject: AnyObject = SomeClass()

// nil을 다루는 방법은 옵셔널 파트에서 다룹니다.
someAny = nil         // 컴파일 오류발생
someAnyObject = nil   // 컴파일 오류발생
```

# :: 컬렉션 타입 ::

- Array - 순서가 있는 리스트 컬렉션
- Dictionary - '키'와 '값'의 쌍으로 이루어진 컬렉션
- Set - 순서가 없고, 멤버가 유일한 컬렉션

**1. Array**

- 멤버가 순서(인덱스)를 가진 리스트 형태의 컬렉션 타입
- 여러가지 리터럴 문법을 활용할 수 있어 표현 방법이 다양합니다.

```swift
// 1. Array 선언 및 생성
var integers: Array<Int> = Array<Int>()

// 위와 동일한 표현
// var integers: Array<Int> = [Int]()
// var integers: Array<Int> = []
// var integers: [Int] = Array<Int>()
// var integers: [Int] = [Int]()
// var integers: [Int] = []
// var integers = [Int]()

// 2. Array 활용
integers.append(1)
integers.append(100)

// Int 타입이 아니므로 Array에 추가할 수 없습니다
//integers.append(101.1)

print(integers)	// [1, 100]

// 멤버 포함 여부 확인
print(integers.contains(100)) // true
print(integers.contains(99)) // false

// 멤버 교체
integers[0] = 99

// 멤버 삭제
integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

// 멤버 수 확인
print(integers.count)

// 인덱스를 벗어나 접근하려면 익셉션 런타임 오류발생
//integers[0]

// 3. 불변 Array: let을 사용하여 Array 선언
let immutableArray = [1, 2, 3]

// 수정이 불가능한 Array이므로 멤버를 추가하거나 삭제할 수 없습니다
//immutableArray.append(4)
//immutableArray.removeAll()
```

**2. Dictionary**

- `'키'`와 '`값'`의 쌍으로 이루어진 컬렉션 타입
- Array와 비슷하게 여러가지 리터럴 문법을 활용할 수 있어 표현 방법이 다양합니다.

```swift
// 1. Dictionary의 선언과 생성
// Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()

// 위와 동일한 표현
// var anyDictionary: Dictionary <String, Any> = Dictionary<String, Any>()
// var anyDictionary: Dictionary <String, Any> = [:]
// var anyDictionary: [String: Any] = Dictionary<String, Any>()
// var anyDictionary: [String: Any] = [String: Any]()
// var anyDictionary: [String: Any] = [:]
// var anyDictionary = [String: Any]()

// 2. Dictionary 활용
// 키에 해당하는 값 할당
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

print(anyDictionary) // ["someKey": "value", "anotherKey": 100]

// 키에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
print(anyDictionary) ["someKey": "dictionary", "anotherKey": 100]

// 키에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
print(anyDictionary)

// 3. 불변 Dictionary: let을 사용하여 Dictionary 선언
let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

// 불변 Dictionary이므로 값 변경 불가
//emptyDictionary["key"] = "value"

// 키에 해당하는 값을 다른 변수나 상수에 할당하고자 할 때는 옵셔널과 타입 캐스팅 파트에서 다룹니다
// "name"이라는 키에 해당하는 값이 없을 수 있으므로 String 타입의 값이 나올 것이라는 보장이 없습니다.
// 컴파일 오류가 발생합니다
// let someValue: String = initalizedDictionary["name"]
```

**3. Set**

- 중복되지 않는 멤버가 순서없이 존재하는 컬렉션
- Array, Dictionary와 다르게 축약형이 존재하지 않음

```swift
// 1. Set 생성 및 선언
var integerSet: Set<Int> = Set<Int>()

// insert : 새로운 멤버 입력
// 동일한 값은 여러번 insert해도 한번만 저장됩니다.
integerSet.insert(1)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(100)

print(intigerSet) // {100, 99, 1}

// contains: 멤버 포함 여부 확인
print(integerSet.contatins(1)) // true
print(integerSet.contains(2)) // false

// remove: 멤버 삭제
integerSet.remove(99) // {100, 1}
integerSet.removeFirst() // {1}

// count: 멤버 개수
integerSet.count // 1

// 2. Set의 활용
// 멤버의 유일성이 보장되기 때문에 집합 연산에 활용하면 유용합니다.
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union) // [2, 4, 5, 6, 7, 3, 1]

// 합집합 오름차순 정렬
let sortedUnion: [Int] = union.sorted()
print(sortedUnion) // [1, 2, 3, 4, 5, 6, 7]

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection) // [5, 3, 4]

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting) // [2, 1]
```

**:: 함수 기본 ::**

**1. 함수선언의 기본형태**

```swift
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}

// 예)
// sum이라는 이름을 가지고
// a와 b라는 Int 타입의 매개변수를 가지며
// Int 타입의 값을 반환하는 함수
func sum(a: Int, b: Int) -> Int {
    return a + b
}
```

**2. 반환 값이 없는 함수**

```swift
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
    /* 함수 구현부 */
    return
}

// 예)
func printMyName(name: String) -> Void {
    print(name)
}

// 반환 값이 없는 경우, 반환 타입(Void)을 생략해 줄 수 있습니다
func printYourName(name: String) {
    print(name)
}
```

**3. 매개변수가 없는 함수**

```swift
func 함수이름() -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}

// 예)
func maximumIntegerValue() -> Int {
    return Int.max
}
```

**4. 매개변수와 반환값이 없는 함수**

```swift
func 함수이름() -> Void {
    /* 함수 구현부 */
    return
}

// 함수 구현이 짧은 경우
// 가독성을 해치지 않는 범위에서
// 줄바꿈을 하지 않고 한 줄에 표현해도 무관합니다
func hello() -> Void { print("hello") }

// 반환 값이 없는 경우, 반환 타입(Void)을 생략해 줄 수 있습니다
func 함수이름() {
    /* 함수 구현부 */
    return
}

func bye() { print("bye") }

```

**5. 함수의 호출**

```swift
sum(a: 3, b: 5) // 8

printMyName(name: "yagom") // yagom

printYourName(name: "hana") // hana

maximumIntegerValue() // Int의 최댓값

hello() // hello

bye() // bye
```

# :: 함수 고급 ::

**1. 매개변수 기본 값**

- 매개변수에 기본적으로 전달될 값을 미리 지정해 둘 수 있습니다.
- 기본값을 갖는 매개변수는 매개변수 목록 중 뒤쪽에 위치하는 것이 좋습니다.

```swift
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}

func greeting(friend: String, me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 호출시 생략할 수 있습니다
greeting(friend: "hana") // Hello hana! I'm yagom
greeting(friend: "john", me: "eric") // Hello john! I'm eric
```

**2. 전달인자 레이블(Argument Label)**

- 함수를 호출할 때 함수 사용자의 입장에서 매개변수의 역할을 좀 더 명확하게 표현하고자 할 때 사용합니다.
- 전달인자 레이블은 변경하여 동일한 이름의 함수를 중복으로 생성가능합니다.

```swift
func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    /* 함수 구현부 */
    return
}

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때에는 전달인자 레이블을 사용해야 합니다
greeting(to: "hana", from: "yagom") // Hello hana! I'm yagom
```

**3. 가변 매개변수**

- 전달 받을 값의 개수를 알기 어려울 때 사용합니다.
- 가변 매개변수는 함수당 하나만 가질 수 있습니다.
- 기본값이 있는 매개변수와 같이 가변 매개변수 역시 매개변수 목록 중 뒤쪽에 위치하는 것이 좋습니다.

```swift
//func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//    /* 함수 구현부 */
//    return
//}

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "yagom", friends: "hana", "eric", "wing"))
// Hello ["hana", "eric", "wing"]! I'm yagom!

print(sayHelloToFriends(me: "yagom"))
// Hello []! I'm yagom!
```

- ***반환값이 없는 함수, 매개변수 기본 값, 전달인자 레이블, 가변 매개변수 등 모두 섞어서 사용 가능합니다.****

**4. 데이터 타입으로서의 함수**

- 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이므로 스위프트의 함수는 일급객체입니다. 그래서 함수를 변수, 상수 등에 할당이 가능하고 매개변수를 통해 전달할 수도 있습니다.
- **함수의 타입 표현** : 반환 타입을 생략할 수 없습니다.

<aside>
💡 (매개변수1타입, 매개변수2타입 ...) -> 반환타입

</aside>

- **함수타입 사용**

```swift
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "yagom") // Hello eric! I'm yagom

someFunction = greeting(friend:me:)
someFunction("eric", "yagom") // Hello eric! I'm yagom

// 타입이 다른 함수는 할당할 수 없습니다 - 컴파일 오류 발생
//someFunction = sayHelloToFriends(me: friends:)

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

// Hello jenny! I'm mike
runAnother(function: greeting(friend:me:))

// Hello jenny! I'm mike
runAnother(function: someFunction)
```

- *** 스위프트 전반적인 문법에서 띄어쓰기를 신경써야할 때가 많습니다**.

# :: 조건문 ::

- **if-else**
- **switch**

**1. if-else 구문**

- **if-else 구문의 기본 형태**
- if만 단독으로 사용해도되고, else, else if 와 조합해서 사용 가능합니다.
- if 뒤의 조건 값에는 Bool 타입의 값만 위치해야 합니다.
- 조건을 감싸는 소괄호는 선택사항입니다.

```swift
if 조건 {
     /* 실행 구문 */
} else if 조건 {
    /* 실행 구문 */
} else {
    /* 실행 구문 */
}
```

- **if-else의 사용**

```swift
let someInteger = 100

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입이 들어와야 합니다.
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
// 컴파일 오류가 발생합니다.
//if someInteger { }
```

**2. switch 구문**

- 스위프트의 switch 구문은 다른 언어에 비해 굉장히 강력한 힘을 발휘합니다.
- 기본적으로 사용하던 정수타입의 값만 비교하는 것이 아니라 대부분의 스위프트 기본 타입을 지원하며, 다양한 패턴과 응용이 가능합니다.
- 스위프트의 다양한 패턴은 [Swift Programming Language Reference의 패턴](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/%ED%8C%A8%ED%84%B4s.html)(아래링크)에서 확인할 수 있습니다.
- 각각의 case 내부에는 실행가능한 코드가 반드시 위치해야 합니다.
- 매우 한정적인 값(ex. enum의 case 등)이 비교값이 아닌 한 default 구문은 반드시 작성해야 합니다.
- 명시적 break를 하지 않아도 자동으로 case마다 break 됩니다.
- fallthrough 키워드를 사용하여 break를 무시할 수 있습니다.
- 쉼표(,)를 사용하여 하나의 case에 여러 패턴을 명시할 수 있습니다.
- **switch 구문의 기본 형태**

```swift
switch 비교값 {
case 패턴:
    /* 실행 구문 */
default:
    /* 실행 구문 */
}
```

- **switch 구문의 사용**

```swift
// 범위 연산자를 활용하면 더욱 쉽고 유용합니다
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
} // 100

// 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
switch "yagom" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "yagom":
    print("yagom!!")
default:
    print("unknown")
} // yagom!!
```

# :: 반복문 ::

- **for-in**
- **while**
- **repeat-while**

**1. for-in 구문**

- 기존 언어의 for-each 구문과 유사합니다.
- Dictionary의 경우 이터레이션 아이템으로 튜플이 들어옵니다. (하단 애플 문서의 튜플 부분 참조)
- **for-in 구문 기본 형태**

```swift
for item in items {
    /* 실행 구문 */
}
```

- **for-in 구문의 사용**

```swift
var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
for (name, age) in people {
    print("\(name): \(age)")
}
```

**2. while 구문**

- **while 구문의 기본 형태**

```swift
while 조건 {
    /* 실행 구문 */
}
```

- **while 구문의 사용**

```swift
while integers.count > 1 {
    integers.removeLast()
}
```

**3. repeat-while 구문**

- 기존 언어의 do-while 구문과 형태/동작이 유사합니다.
- **repeat-while 구문의 기본 형태**

```swift
repeat {
    /* 실행 구문 */
} while 조건
```

- **repeat-while 구문의 사용**

```swift
repeat {
    integers.removeLast()
} while integers.count > 0
```

# :: 옵셔널 ::

**1. 옵셔널이란??**

- **값이 있을 수도, 없을 수도 있음**을 표현
- **nil이 할당 될 수 있는지 없는지** 표현

```swift
// someOptionalParm에 nil이 할당 될 수 있다.
func someFunction(someOptionalParam: Int?) {
       // ....
}

/// someOptionalParm에 nil이 할당 될 수 없다.
func someFunction(someOptionalParam: Int) {
       // ....
}

someFunction(someOptionalParam: nil)
// someFunction(someParam: nil)
```

**2. 옵셔널을 쓰는 이유**

- **명시적 표현**

1. nil의 가능성을 코드만으로 표현가능          2. 문서/주석 작성 시간 절약

- **안전한 사용**

1. 전달받은 값이 옵셔널이 아니라면 nil 체크를 하지 않고 사용가능          2. 예외 상황을 최소화 하는 안전한 코딩  3. 효율적 코딩

**3. 옵셔널 문법과 선언**

- 옵셔널 문법 = enum + generics (수업 후반에 다시 배울거에요)
- 옵셔널 선언

```swift
enum Optional<Wrapped>: ExpressibleByNiliteral {
         case none
         case some(Wrapped)
}

let optionalValue: Optional<Int> = nil
let optionalValue: Int? =nil
```

- **옵셔널 표현**

1. 느낌표(!)를 이용한 암시적 추출 옵셔널

```swift
// Implicitly Unwrapped Optional
var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

```

2. 물음표(?)를 이용한 옵셔널

```swift
// Optional
var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
//optionalValue = optionalValue + 1
```

# :: 옵셔널 추출 ::

**1. 옵셔널 추출이란?**

- 옵셔널에 들어있는 값을 사용하기 위해 꺼내오는 것

**2. 옵셔널 방식**

- **옵셔널 바인딩**

1. nil 체크 + 안전한 추출2. 옵셔널 안에 값이 들어있는지 확인하고 값이 있으면 값을 꺼내옵니다.3. if-let 방식 사용

```swift
func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

//printName(myName)
// 전달되는 값의 타입이 다르기 때문에 컴파일 오류발생

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

// name 상수는 if-let 구문 내에서만 사용가능합니다
// 상수 사용범위를 벗어났기 때문에 컴파일 오류 발생
//printName(name)

// ,를 사용해 한 번에 여러 옵셔널을 바인딩 할 수 있습니다
// 모든 옵셔널에 값이 있을 때만 동작합니다
myName = "yagom"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yourName이 nil이기 때문에 실행되지 않습니다
yourName = "hana"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// yagom and hana

```

- **강체추출 :** 옵셔널에 값이 들어있는지 아닌지 확인하지 않고 강제로 값을 꺼내는 방식, 만약 값이 없을경우(nil) 런타임 오류가 발생하기 때문에 추천되지 않습니다.

```swift
var myName: String? = yagom
var youName: String! = nil

printName(myName!) // yagom
myName = nil

//print(myName!)
// 강제추출시 값이 없으므로 런타임 오류 발생
yourName = nil

//printName(yourName)
// nil 값이 전달되기 때문에 런타임 오류발생
```

# :: 구조체 ::

**1. 구조체란?**

- 스위프트 대부분 타입은 구조체로 이루어져 있습니다.
- 구조체는 **값(value) 타입**입니다.
- 타입이름은 대문자 카멜케이스를 사용하여 정의합니다.

**2. 구조체 문법**

- **구조체 정의 :** "struct" 키워드 사용

```swift
struct 이름 {
	/* 구현부 */
}
```

- **구조체 프로퍼티 및 메서드 구현**

```swift
struct Sample {
    // 가변 프로퍼티(값 변경 가능)
    var mutableProperty: Int = 100

    // 불변 프로퍼티(값 변경 불가능)
    let immutableProperty: Int = 100

    // 타입 프로퍼티(static 키워드 사용 : 타입 자체가 사용하는 프로퍼티)
    static var typeProperty: Int = 100

    // 인스턴스 메서드(인스턴스가 사용하는 메서드)
    func instanceMethod() {
        print("instance method")
    }

    // 타입 메서드(static 키워드 사용 : 타입 자체가 사용하는 메서드)
    static func typeMethod() {
        print("type method")
    }
}
```

- **구조체 사용**

```swift
// 가변 인스턴스 생성
var mutable: Sample = Sample()

mutable.mutableProperty = 200

// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없습니다
// 컴파일 오류 발생
//mutable.immutableProperty = 200

// 불변 인스턴스
let immutable: Sample = Sample()

// 불변 인스턴스는 아무리 가변 프로퍼티라도
// 인스턴스 생성 후에 수정할 수 없습니다
// 컴파일 오류 발생
//immutable.mutableProperty = 200
//immutable.immutableProperty = 200

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를
// 사용할 수 없습니다
// 컴파일 오류 발생
//mutable.typeProperty = 400
//mutable.typeMethod()
```

**3. 학생 구조체 만들어보기**

```swift
struct Student {
	// 가변 프로퍼티
    var name: String = "unknown"

    // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    var `class`: String = "Swift"

    // 타입 메서드
    static func selfIntroduce() {
        print("학생타입입니다")
    }

    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항입니다
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

// 타입 메서드 사용
Student.selfIntroduce() // 학생타입입니다

// 가변 인스턴스 생성
var yagom: Student = Student()
yagom.name = "yagom"
yagom.class = "스위프트"
yagom.selfIntroduce()   // 저는 스위프트반 yagom입니다

// 불변 인스턴스 생성
let jina: Student = Student()

// 불변 인스턴스이므로 프로퍼티 값 변경 불가
// 컴파일 오류 발생
//jina.name = "jina"
jina.selfIntroduce() // 저는 Swift반 unknown입니다
```

# :: 클래스 ::

**1. 클래스란?**

- 클래스는 참조(reference) 타입입니다.
- 타입이름은 대문자 카멜케이스를 사용하여 정의합니다.
- Swift의 클래스는 다중 상속이 되지 않습니다.

**2. 클래스 문법**

- **정의 :** "class" 키워드 사용

```swift
class 이름 {
	/* 구현부 */
}
```

- **프로퍼티 및 메서드 구현**

```swift
class Sample {
    // 가변 프로퍼티
    var mutableProperty: Int = 100

    // 불변 프로퍼티
    let immutableProperty: Int = 100

    // 타입 프로퍼티
    static var typeProperty: Int = 100

    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }

    // 타입 메서드
    // 상속시 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }

    // 상속시 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}
```

- **클래스 사용**

```swift
// 인스턴스 생성 - 참조정보 수정 가능
var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200

// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없습니다
// 컴파일 오류 발생
//mutableReference.immutableProperty = 200

// 인스턴스 생성 - 참조정보 수정 불가
let immutableReference: Sample = Sample()

// 클래스의 인스턴스는 참조 타입이므로 let으로 선언되었더라도 인스턴스 프로퍼티의 값 변경이 가능합니다
immutableReference.mutableProperty = 200

// 다만 참조정보를 변경할 수는 없습니다
// 컴파일 오류 발생
//immutableReference = mutableReference

// 참조 타입이라도 불변 인스턴스는
// 인스턴스 생성 후에 수정할 수 없습니다
// 컴파일 오류 발생
//immutableReference.immutableProperty = 200

// 타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod() // type method

// 인스턴스에서는 타입 프로퍼티나 타입 메서드를
// 사용할 수 없습니다
// 컴파일 오류 발생
//mutableReference.typeProperty = 400
//mutableReference.typeMethod()
```

**3. 학생 클래스 만들어 보기**

```swift
class Student {
	// 가변 프로퍼티
    var name: String = "unknown"

    // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    var `class`: String = "Swift"

    // 타입 메서드
    class func selfIntroduce() {
        print("학생타입입니다")
    }

    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항입니다
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

// 타입 메서드 사용
Student.selfIntroduce() // 학생타입입니다

// 인스턴스 생성
var yagom: Student = Student()
yagom.name = "yagom"
yagom.class = "스위프트"
yagom.selfIntroduce()   // 저는 스위프트반 yagom입니다

// 인스턴스 생성
let jina: Student = Student()
jina.name = "jina"
jina.selfIntroduce() // 저는 Swift반 jina입니다
```

# :: 열거형 ::

**1. 열거형**

Swift 열거형은 다른 언어의 열거형과 많이 다릅니다. 강력한 기능을 지니고 있어 잘 알아두고 사용하면 좋습니다.

- 유사한 종류의 여러 값을 한 곳에 모아서 정의한 것입니다. 예) 요일, 월, 계절 등
- enum 자체가 하나의 데이터 타입으로, 대문자 카멜케이스를 사용하여 이름을 정의합니다.
- 각 case는 소문자 카멜케이스로 정의합니다.
- 각 case는 그 자체가 고유의 값입니다.(각 case에 자동으로 정수값이 할당되지 않음)
- 각 case는 한 줄에 개별로도, 한 줄에 여러개도 정의할 수 있습니다.

```swift
enum 이름 {
	case 이름1
	case 이름2
	case 이름3, 이름4, 이름5
	// ...
}

// 예제
enum BoostCamp {
        case iosCamp
        case androidCamp
        case webCamp
}
```

**2. 열거형 사용**

- 타입이 명확할 경우, 열거형의 이름을 생략 할 수 있습니다.
- switch 구문에서 사용하면 좋습니다.

```swift
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// 열거형 타입과 케이스를 모두 사용하여도 됩니다
var day: Weekday = Weekday.mon

// 타입이 명확하다면 .케이스 처럼 표현해도 무방합니다
day = .tue

print(day) // tue

// switch의 비교값에 열거형 타입이 위치할 때
// 모든 열거형 케이스를 포함한다면
// default를 작성할 필요가 없습니다
switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}
```

**3. rawValue (원시값)**

- C 언어의 enum 처럼 정수값을 가질 수 있습니다.
- rawValue는 case별로 각각 다른 값을 가져야합니다.
- 자동으로 1이 증가된 값이 할당됩니다.
- rawValue를 반드시 지닐 필요가 없다면 굳이 만들지 않아도 됩니다.

```swift
enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach

    // mango와 apple의 원시값이 같으므로
    // mango 케이스의 원시값을 0으로 정의할 수 없습니다
//    case mango = 0
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
// Fruit.peach.rawValue == 2
```

정수 타입 뿐만 아니라, Hashable 프로토콜을 따르는 모든 타입을 원시값의 타입으로 지정 할 수있습니다.

```swift
enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")
// School.middle.rawValue == 중등

// 열거형의 원시값 타입이 String일 때, 원시값이 지정되지 않았다면
// case의 이름을 원시값으로 사용합니다
print("School.university.rawValue == \(School.university.rawValue)")
// School.middle.rawValue == university
```

**4. 원시값을 통한 초기화**

- rawValue를 통해 초기화 할 수 있습니다.
- rawValue가 case에 해당하지 않을 수 있으므로, rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입입니다.

```swift
// rawValue를 통해 초기화 한 열거형 값은 옵셔널 타입이므로 Fruit 타입이 아닙니다
//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

// if let 구문을 사용하면 rawValue에 해당하는 케이스를 곧바로 사용할 수 있습니다
if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다")
} // rawValue 5에 해당하는 케이스가 없습니다
```

**5. 메서드**

Swift의 열거형에는 메서드도 추가할 수 있습니다.

```swift
enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov

    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따스한 봄~")
        case .jun, .jul, .aug:
            print("여름 더워요~")
        case .sep, .oct, .nov:
            print("가을은 독서의 계절!")
        case .dec, .jan, .feb:
            print("추운 겨울입니다")
        }
    }
}

Month.mar.printMessage()
```

# :: 클래스 vs 구조체/열거형 ::

- 클래스는 **참조 타입**, 열거형과 구조체는 **값 타입**이라는 것이 가장 큰 차이입니다.
- 클래스는 상속이 가능하지만, 열거형과 **구조체**는 상속이 불가능 합니다.

**1. 값 타입과 참조 타입 비교**

- 값 타입(Value Type) : 데이터를 전달 할 때 값을 복사하여 전달합니다.
- 참조 타입(Reference Type) : 데이터를 전할 할 때 값의 메모리 위치를 전달합니다.

```swift
struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

// 첫 번째 구조체 인스턴스
let firstStructInstance = ValueType()

// 두 번째 구조체 인스턴스에 첫 번째 인스턴스 값 복사
var secondStructInstance = firstStructInstance

// 두 번째 구조체 인스턴스 프로퍼티 값 수정
secondStructInstance.property = 2

// 두 번째 구조체 인스턴스는 첫 번째 구조체를 똑같이 복사한
// 별도의 인스턴스이기 때문에
// 두 번째 구조체 인스턴스의 프로퍼티 값을 변경해도
// 첫 번째 구조체 인스턴스의 프로퍼티 값에는 영향이 없음
print("first struct instance property : \(firstStructInstance.property)")    // 1
print("second struct instance property : \(secondStructInstance.property)")  // 2

// 클래스 인스턴스 생성 후 첫 번째 참조 생성
let firstClassReference = ReferenceType()
// 두 번째 참조 변수에 첫 번째 참조 할당
let secondClassReference = firstClassReference
secondClassReference.property = 2

// 두 번째 클래스 참조는 첫 번째 클래스 인스턴스를 참조하기 때문에
// 두 번째 참조를 통해 인스턴스의 프로퍼티 값을 변경하면
// 첫 번째 클래스 인스턴스의 프로퍼티 값을 변경하게 됨
print("first class reference property : \(firstClassReference.property)")    // 2
print("second class reference property : \(secondClassReference.property)")  // 2
```

**2. 값 타입을 사용하는 경우**

- 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하고 싶은 경우
- 다른 객체 또는 함수 등으로 전달될 때 참조가 아니라 복사(값 복사) 할 경우
- 자신을 상속할 필요가 없거나, 다른 타입을 상속 받을 필요가 없는 경우

**3. 스위프트에서의 사용**

- 스위프트의 기본 데이터 타입은 모두 구조체로 구현되어있습니다.
- 스위스트는 구조체와 열거형 사용을 선호합니다.
- Apple 프레임워크는 대부분 클래스를 사용합니다.
- 구조체/클래스 선택과 사용은 개발자의 몫입니다.

# :: 클로저 기본 ::

**1. 클로저**

- 클로저는 실행가능한 코드 블럭입니다.
- 함수와 다르게 이름정의는 필요하지는 않지만, 매개변수 전달과 반환 값이 존재 할 수 있다는 점이 동일합니다.
- 함수는 이름이 있는 클로저입니다.
- 일급객체로 전달인자, 변수, 상수 등에 저장 및 전달이 가능합니다.

**2. 기본 클로저 문법**

- 클로저는 중괄호 { }로 감싸져있습니다.
- 괄호를 이용해 파라미터를 정의합니다.
- > 을 이용해 반환 타입을 명시합니다.
- "in" 키워드를 이용해 실행 코드와 분리합니다.

```swift
{ (매개변수 목록) -> 반환타입 in
    실행 코드
}
```

**3. 클로저 사용**

```swift
// sum이라는 상수에 클로저를 할당
let sum: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}

let sumResult: Int = sum(1, 2)
print(sumResult) // 3
```

**4. 함수의 전달인자로서의 클로저**

- 클로저는 주로 함수의 전달인자로 많이 사용됩니다.
- 함수 내부에서 원하는 코드블럭을 실행 할 수 있습니다.

```swift
let add: (Int, Int) -> Int
add = { (a: Int, b: Int) in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)

print(calculated) // 60

calculated = calculate(a: 50, b: 10, method: substract)

print(calculated) // 40

calculated = calculate(a: 50, b: 10, method: divide)

print(calculated) // 5

//따로 클로저를 상수/변수에 넣어 전달하지 않고,
//함수를 호출할 때 클로저를 작성하여 전달할 수도 있습니다.

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})

print(calculated) // 500
```

# :: 클로저 고급 - 다양한 클로저 표현 ::

**클로저는 아래 규칙을 통해 다양한 모습으로 표현될 수 있습니다.**

1. **후행 클로저** : 함수의 매개변수 마지막으로 전달되는 클로저는 `후행클로저(trailing closure)`로 함수 밖에 구현할 수 있습니다.
2. **반환타입 생략** : 컴파일러가 클로저의 타입을 유추할 수 있는 경우 매개변수, 반환 타입을 생략할 수 있습니다.
3. **단축 인자 이름** : 전달인자의 이름이 굳이 필요없고, 컴파일러가 타입을 유추할 수 있는 경우 축약된 전달인자 이름(`$0`, `$1`, `$2`...)을 사용 할 수 있습니다.
4. **암시적 반환 표현** : 반환 값이 있는 경우, 암시적으로 클로저의 맨 마지막 줄은 `return` 키워드를 생략하더라도 반환 값으로 취급합니다.

**기본 클로저 표현**

```swift
// 클로저를 매개변수로 갖는 함수 calculated(a:b:method:)와 결과값을 저장할 변수 result 선언
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var result: Int
```

**1. 후행 클로저**

클로저가 함수의 마지막 전달인자일때, 마지막 매개변수 이름을 생략한 후 함수 소괄호 외부에 클로저를 구현할 수 있습니다.

```swift
result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}

print(result) // 20
```

**2. 반환타입 생략**

`calculate(a:b:method:)` 함수의 `method` 매개변수는 `Int` 타입을 반환할 것이라는 사실을 컴파일러도 알기 때문에 굳이 클로저에서 반환타입을 명시해 주지 않아도 됩니다. 대신 `in 키워드는 생략할 수 없습니다`

```swift
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})

print(result) // 20

// 후행클로저와 함께 사용할 수도 있습니다
result = calculate(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}

print(result) // 20
```

**3. 단축 인자이름**

클로저의 매개변수 이름이 굳이 불필요하다면 단축 인자이름을 활용할 수 있습니다. 단축 인자이름은 클로저의 매개변수의 순서대로 `$0`, `$1`, `$2`... 처럼 표현합니다.

```swift
result = calculate(a: 10, b: 10, method: {
    return $0 + $1
})

print(result) // 20

// 당연히 후행 클로저와 함께 사용할 수 있습니다
result = calculate(a: 10, b: 10) {
    return $0 + $1
}

print(result) // 20
```

**4. 암시적 반환 표현**

클로저가 반환하는 값이 있다면 클로저의 마지막 줄의 결과값은 암시적으로 반환값으로 취급합니다.

```swift
result = calculate(a: 10, b: 10) {
    $0 + $1
}

print(result) // 20

// 간결하게 한 줄로 표현해 줄 수도 있습니다
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20
```

- ***축약 전과 후 비교****

```swift
//축약 전
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

//축약 후
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result) // 20
```

- 너무 축약된 코드는 타인이 보거나, 시간이 지난 뒤에 볼 때 명시성이 떨어질 수 있으므로 적정선에서 축약하도록 합시다!

# :: 프로퍼티 ::

**1. 프로퍼티의 종류**

- **인스턴스 저장 프로퍼티**
- **타입 저장 프로퍼티**
- **인스턴스 연산 프로퍼티**
- **타입 연산 프로퍼티**
- 지연 저장 프로퍼티

**2. 정의와 사용**

- 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다.
- 다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다.
- 연산 프로퍼티는 `var`로만 선언할 수 있습니다.
- 연산프로퍼티를 읽기전용으로는 구현할 수 있지만, 쓰기 전용으로는 구현할 수 없습니다.
- 읽기전용으로 구현하려면 `get` 블럭만 작성해주면 됩니다. 읽기전용은 `get`블럭을 생략할 수 있습니다.
- 읽기, 쓰기 모두 가능하게 하려면 `get` 블럭과 `set`블럭을 모두 구현해주면 됩니다.
- `set` 블럭에서 암시적 매개변수 `newValue`를 사용할 수 있습니다.

```swift
struct Student {

    // 인스턴스 저장 프로퍼티
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0

    // 인스턴스 연산 프로퍼티
    var westernAge: Int {
        get {
            return koreanAge - 1
        }

        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }

    // 타입 저장 프로퍼티
    static var typeDescription: String = "학생"

    /*
    // 인스턴스 메서드
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
     */

    // 읽기전용 인스턴스 연산 프로퍼티
    // 간단히 위의 selfIntroduce() 메서드를 대체할 수 있습니다
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다"
        }
    }

    /*
     // 타입 메서드
     static func selfIntroduce() {
     print("학생타입입니다")
     }
     */

    // 읽기전용 타입 연산 프로퍼티
    // 읽기전용에서는 get을 생략할 수 있습니다
    static var selfIntroduction: String {
        return "학생타입입니다"
    }
}

// 타입 연산 프로퍼티 사용
print(Student.selfIntroduction)
// 학생타입입니다

// 인스턴스 생성
var yagom: Student = Student()
yagom.koreanAge = 10

// 인스턴스 저장 프로퍼티 사용
yagom.name = "yagom"
print(yagom.name)
// yagom

// 인스턴스 연산 프로퍼티 사용
print(yagom.selfIntroduction)
// 저는 Swift반 yagom입니다

print("제 한국나이는 \(yagom.koreanAge)살이고, 미쿡나이는 \(yagom.westernAge)살입니다.")
// 제 한국나이는 10살이고, 미쿡나이는 9살입니다.
```

**3. 응용**

```swift
struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket = Money()

moneyInMyPocket.won = 11000

print(moneyInMyPocket.won)
// 11000

moneyInMyPocket.dollar = 10

print(moneyInMyPocket.won)
// 11000
```

**4. 지역변수 및 전역변수**

저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능합니다.

`var a: Int = 100
var b: Int = 200
var sum: Int {
    return a + b
}

print(sum) // 300`

# :: 프로퍼티 감시자 ::

**1. 프로퍼티 감시자**

- 프로퍼티 감시자를 사용하면 **프로퍼티의 값이 변경**될 때 원하는 동작을 수행할 수 있습니다.
- 값이 변경되기 직전에 `willSet`블럭이, 값이 변경된 직후에 `didSet`블럭이 호출됩니다.
- 둘 중 필요한 하나만 구현해 주어도 무관합니다.
- 변경되려는 값이 **기존 값과 똑같더라도** 프로퍼티 감시자는 항상 동작합니다.
- **`willSet`** 블럭에서는 암시적 매개변수 **`newValue`**를, **`didSet`** 블럭에서는 **`oldValue`**를 사용할 수 있습니다.
- 프로퍼티 감시자는 연산 프로퍼티에는 사용할 수 없습니다.
- 프로퍼티 감시자는 함수, 메서드, 클로저, 타입 등의 지역/전역 변수에 모두 사용 가능합니다.

**2. 정의 및 사용**

```swift
struct Money {
    // 프로퍼티 감시자 사용
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다")
        }

        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다")
        }
    }

    // 프로퍼티 감시자 사용
    var dollar: Double = 0 {
        // willSet의 암시적 매개변수 이름 newValue
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다")
        }

        // didSet의 암시적 매개변수 이름 oldValue
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다")
        }
    }

    // 연산 프로퍼티
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }

        /* 프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없습니다
        willSet {

        }
         */
    }
}

var moneyInMyPocket: Money = Money()

// 환율이 1100.0에서 1150.0으로 변경될 예정입니다
moneyInMyPocket.currencyRate = 1150
// 환율이 1100.0에서 1150.0으로 변경되었습니다

// 0.0달러에서 10.0달러로 변경될 예정입니다
moneyInMyPocket.dollar = 10
// 0.0달러에서 10.0달러로 변경되었습니다

print(moneyInMyPocket.won)
// 11500.0
```

# :: 상속 ::

**1. 스위프트 상속**

- 상속은 클래스, 프로토콜 등에서 가능합니다.
- 열거형, 구조체는 상속이 불가능합니다.
- 스위프트의 클래스는 단일상속으로, 다중상속을 지원하지 않습니다.
- 이번 파트에서는 클래스의 상속에 대해서 알아봅니다.

**2. 문법**

```swift
class 이름: 상속받을 클래스 이름 {
    /* 구현부 */
}
```

**3. 사용**

- **final** 키워드를 사용하면 재정의(**override**)를 방지할 수 있습니다.
- **static** 키워드를 사용해 타입 메서드를 만들면 재정의가 불가능 합니다.
- **class** 키워드를 사용해 타입 메서드를 만들면 재정의가 가능합니다.
- **class** 앞에 **final**을 붙이면 **static** 키워드를 사용한것과 동일하게 동작합니다.
- **override** 키워드를 사용해 부모 클래스의 메서드를 재정의 할 수 있습니다.

```swift
// 기반 클래스 Person
class Person {
    var name: String = ""

    func selfIntroduce() {
        print("저는 \(name)입니다")
    }

    // final 키워드를 사용하여 재정의를 방지할 수 있습니다
    final func sayHello() {
        print("hello")
    }

    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }

    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }

    // 재정의 가능한 class 메서드라도
    // final 키워드를 사용하면 재정의 할 수 없습니다
    // 메서드 앞의 `static`과 `final class`는 똑같은 역할을 합니다
    final class func finalCalssMethod() {
        print("type method - final class")
    }
}

// Person을 상속받는 Student
class Student: Person {
    var major: String = ""

    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
    }

    override class func classMethod() {
        print("overriden type method - class")
    }

    // static을 사용한 타입 메서드는 재정의 할 수 없습니다
//    override static func typeMethod() {    }

    // final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없습니다
//    override func sayHello() {    }
//    override class func finalClassMethod() {    }

}
```

**4. 구동 확인**

```swift
let yagom: Person = Person()
let hana: Student = Student()

yagom.name = "yagom"
hana.name = "hana"
hana.major = "Swift"

yagom.selfIntroduce()
// 저는 yagom입니다

hana.selfIntroduce()
// 저는 hana이고, 전공은 Swift입니다

Person.classMethod()
// type method - class

Person.typeMethod()
// type method - static

Person.finalCalssMethod()
// type method - final class

Student.classMethod()
// overriden type method - class

Student.typeMethod()
// type method - static

Student.finalCalssMethod()
// type method - final class
```

# :: 인스턴스의 생성과 소멸 ::

- init/deinit -

인스턴스를 생성하는 **이니셜라이저**와 클래스의 인스턴스가 소멸될 때 호출되는 **디이니셜라이저**, 그리고 이와 관련된 것들에 대해 알아봅니다.

- 프로퍼티 초기값
- 이니셜라이저 **`init`**
- 디이니셜라이저 **`deinit`**

**1. 프로퍼티 초기값**

- 스위프트의 모든 인스턴스는 초기화와 동시에 **모든 프로퍼티에** 유효한 값이 할당되어 있어야 합니다.
- 프로퍼티에 미리 기본값을 할당해두면 인스턴스가 생성됨과 동시에 초기값을 지니게 됩니다.

```swift
class PersonA {
    // 모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}

// 인스턴스 생성
let jason: PersonA = PersonA()

// 기본값이 인스턴스가 지녀야 할 값과 맞지 않다면
// 생성된 인스턴스의 프로퍼티에 각각 값 할당
jason.name = "jason"
jason.age = 30
jason.nickName = "j"
```

**2-1. 이니셜라이저(initializer)**

- 프로퍼티 초기값을 지정하기 어려운 경우에는 이니셜라이저 **`init`**을 통해 인스턴스가 가져야 할 초기값을 전달할 수 있습니다.

```swift
class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    // 이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let hana: PersonB = PersonB(name: "hana", age: 20, nickName: "하나")
```

> 프로퍼티의 초기값이 꼭 필요 없을 때
> 
- **옵셔널**을 사용!
- **class** 내부의 **init**을 사용할때는 **convenience** 키워드 사용

```swift
class PersonC {
    var name: String
    var age: Int
    var nickName: String?

    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }

// 위와 동일한 기능 수행
// convenience init(name: String, age: Int, nickName: String) {
//       init(name: name, age: age)
//       self.nickName = nickName
//  }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")
```

- 암시적 추출 옵셔널은 인스턴스 사용에 꼭 필요하지만 초기값을 할당하지 않고자 할 때 사용

```swift
class Puppy {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다")
    }
}

let happy: Puppy = Puppy(name: "happy")
// 강아지는 주인없이 산책하면 안돼요!
//happy.goOut() // 주인이 없는 상태라 오류 발생
happy.owner = jenny
happy.goOut()
// happy가 주인 jenny와 산책을 합니다
```

**2-2. 실패가능한 이니셜라이저**

- 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우 인스턴스 생성에 실패할 수 있습니다.
- 인스턴스 생성에 실패하면 **nil**을 반환합니다.
- 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입입니다.
- **`init?`**을 사용합니다.

```swift
class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        
        if name.characters.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

//let john: PersonD = PersonD(name: "john", age: 23)
let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123)
let batman: PersonD? = PersonD(name: "", age: 10)

print(joker) // nil
print(batman) // nil
```

**3. 디이니셜라이저(deinitializer)**

- **`deinit`**은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출됩니다.
- 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있습니다.
- **`deinit`**은 매개변수를 지닐 수 없습니다.
- 자동으로 호출되므로 직접 호출할 수 없습니다.
- 디이니셜라이저는 **클래스 타입에만** 구현할 수 있습니다.
- 인스턴스가 메모리에서 해제되는 시점은 **ARC(Automatic Reference Counting)** 의 규칙에 따라 결정됩니다.
- **ARC**에 대해 더 자세한 사항은 아래 [ARC 문서](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html)를 참고하세요.

```swift
class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    
    // 인스턴스가 메모리에서 해제되는 시점에 자동 호출
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}

var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil // donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
// donald가 jenny에게 happy를 인도합니다
```

# :: 옵셔널 체이닝과 nil 병합 연산자 ::

**1. 옵셔널 체이닝**

- 옵셔널 체이닝은 옵셔널의 내부의 내부의 내부로 옵셔널이 연결되어 있을 때 유용하게 활용할 수 있습니다.
- 매번 **nil** 확인을 하지 않고 최종적으로 원하는 값이 있는지 없는지 확인할 수 있습니다.

```swift
// 예제 클래스
// 사람 클래스
class Person {
    var name: String
    var job: String?
    var home: Apartment?

    init(name: String) {
        self.name = name
    }
}
// 사람이 사는 집 클래스
class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?

    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

// 옵셔널 체이닝 사용
let yagom: Person? = Person(name: "yagom")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")

// 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로
// 결과 타입도 옵셔널입니다

// 만약 우리집의 경비원의 직업이 궁금하다면..?

// 옵셔널 체이닝을 사용하지 않는다면...
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}

guardJob(owner: yagom)

// 옵셔널 체이닝을 사용한다면
func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: yagom)
// 우리집 경비원은 직업이 없어요

yagom?.home?.guard?.job // nil

yagom?.home = apart

yagom?.home // Optional(Apartment)
yagom?.home?.guard // nil

// 경비원 할당
yagom?.home?.guard = superman

yagom?.home?.guard // Optional(Person)

yagom?.home?.guard?.name // superman
yagom?.home?.guard?.job // nil

yagom?.home?.guard?.job = "경비원"
```

**2. nil 병합 연산자**

- 중위 연산자입니다. **`??`**
- Optional **??** Value
- 옵셔널 값이 **`nil`**일 경우, 우측의 값을 반환합니다.
- **띄어쓰기에 주의하여야 합니다.**

```swift
var guardJob: String

guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 경비원

yagom?.home?.guard?.job = nil

guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 슈퍼맨
```

# :: 타입 캐스팅 ::

**1. 스위프트 타입 캐스팅**

- **인스턴스의 타입을 확인** 하는 용도
- 클래스의 인스턴스를 **부모 혹은 자식 클래스의 타입으로 사용할 수 있는지 확인** 하는 용도
- **`is`**, **`as`**를 사용합니다.
- *형변환은 'ex. let someDouble = Double(2)' 타입 캐스팅이 아니라 새로운 값을 생성하는 것입니다.*

**2. 예제 클래스**

```swift
class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 합니다")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("멤버쉽 트레이닝을 갑니다 신남!")
    }
}
```

```swift
// 인스턴스 생성
var yagom: Person = Person()
var hana: Student = Student()
var jason: UniversityStudent = UniversityStudent()
```

**2. 타입확인**

**is**를 사용하여 타입을 확인합니다.

```swift
var result: Bool

result = yagom is Person // true
result = yagom is Student // false
result = yagom is UniversityStudent // false

result = hana is Person // true
result = hana is Student // true
result = hana is UniversityStudent // false

result = jason is Person // true
result = jason is Student // true
result = jason is UniversityStudent // true

if yagom is UniversityStudent {
    print("yagom은 대학생입니다")
} else if yagom is Student {
    print("yagom은 학생입니다")
} else if yagom is Person {
    print("yagom은 사람입니다")
} // yagom은 사람입니다

switch jason {
case is Person:
    print("jason은 사람입니다")
case is Student:
    print("jason은 학생입니다")
case is UniversityStudent:
    print("jason은 대학생입니다")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다")
} // jason은 사람입니다

switch jason {
case is UniversityStudent:
    print("jason은 대학생입니다")
case is Student:
    print("jason은 학생입니다")
case is Person:
    print("jason은 사람입니다")
default:
    print("jason은 사람도, 학생도, 대학생도 아닙니다")
} // jason은 대학생입니다
```

**3. 업 캐스팅(Up Casting)**

- **`as`**를 사용하여 **부모클래스의 인스턴스**로 사용할 수 있도록 컴파일러에게 타입정보를 전환해줍니다.
- **`Any`** 혹은 **`AnyObject`**로도 타입정보를 변환할 수 있습니다.
- 암시적으로 처리되므로 꼭 필요한 경우가 아니라면 생략해도 무방합니다.

```swift
// UniversityStudent 인스턴스를 생성하여 Person 행세를 할 수 있도록 업 캐스팅
var mike: Person = UniversityStudent() as Person

var jenny: Student = Student()
//var jina: UniversityStudent = Person() as UniversityStudent // 컴파일 오류

// UniversityStudent 인스턴스를 생성하여 Any 행세를 할 수 있도록 업 캐스팅
var jina: Any = Person() // as Any 생략가능

```

**4. 다운 캐스팅(Down Casting)**

`as?` 또는 `as!`를 사용하여 **자식 클래스의 인스턴스**로 사용할 수 있도록 컴파일러에게 인스턴스의 타입정보를 전환해줍니다.

**A. 조건부 다운 캐스팅**

- `as?`를 사용합니다.
- 캐스팅에 실패하면, 즉 캐스팅하려는 타입에 부합하지 않는 인스턴스라면 `nil`을 반환하기 때문에 결과의 타입은 옵셔널 타입입니다.

```swift
var optionalCasted: Student?

optionalCasted = mike as? UniversityStudent
optionalCasted = jenny as? UniversityStudent // nil
optionalCasted = jina as? UniversityStudent // nil
optionalCasted = jina as? Student // nil
```

**B. 강제 다운 캐스팅**

- `as!`를 사용합니다.
- 캐스팅에 실패하면, 즉 캐스팅하려는 타입에 부합하지 않는 인스턴스라면 **런타임 오류**가 발생합니다.
- 캐스팅에 성공하면 옵셔널이 아닌 일반 타입을 반환합니다.

```swift
var forcedCasted: Student

forcedCasted = mike as! UniversityStudent
//forcedCasted = jenny as! UniversityStudent // 런타임 오류
//forcedCasted = jina as! UniversityStudent // 런타임 오류
//forcedCasted = jina as! Student // 런타임 오류
```

**5. 활용**

```swift
func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:
        (someone as! UniversityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

doSomethingWithSwitch(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
doSomethingWithSwitch(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
doSomethingWithSwitch(someone: jenny) // 등교를 합니다
doSomethingWithSwitch(someone: yagom) // 숨을 쉽니다

func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}

doSomething(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: jenny) // 등교를 합니다
doSomething(someone: yagom) // 숨을 쉽니다
```

# :: assert / guard ::

애플리케이션이 동작 도중에 생성하는 다양한 연산 결과값을 동적으로 확인하고 안전하게 처리할 수 있도록 확인하고 빠르게 처리할 수 있습니다.

**1. Assertion**

- **`assert(_:_:file:line:)`** 함수를 사용합니다.
- **assert** 함수는 **디버깅 모드에서만** 동작합니다.
- 배포하는 애플리케이션에서는 제외됩니다.
- 예상했던 **조건의 검증을 위하여** 사용합니다.

```swift
var someInt: Int = 0

// 검증 조건과 실패시 나타날 문구를 작성해 줍니다
// 검증 조건에 부합하므로 지나갑니다
assert(someInt == 0, "someInt != 0")

someInt = 1
//assert(someInt == 0) // 동작 중지, 검증 실패
//assert(someInt == 0, "someInt != 0") // 동작 중지, 검증 실패
// assertion failed: someInt != 0: file guard_assert.swift, line 26

func functionWithAssert(age: Int?) {
    
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
    print("당신의 나이는 \(age!)세입니다")
}

functionWithAssert(age: 50)
//functionWithAssert(age: -1) // 동작 중지, 검증 실패
//functionWithAssert(age: nil) // 동작 중지, 검증 실패
```

- `**assert(_:_:file:line:)**`와 같은 역할을 하지만 실제 배포 환경에서도 동작하는 **`precondition(_:_:file:line:)`** 함수도 있습니다. 함께 살펴보세요.

**2. guard(빠른종료- Early Exit)**

- **`guard`**를 사용하여 잘못된 값의 전달 시 특정 실행구문을 빠르게 종료합니다.
- 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작합니다.
- **`guard`**의 **`else`** 블럭 내부에는 특정 **코드블럭을 종료하는 지시어(`return`, `break` 등)가 꼭 있어야 합니다.**
- [타입 캐스팅](https://yagom.github.io/swift_basic/contents/17_type_casting/), [옵셔널](https://yagom.github.io/swift_basic/contents/07_optional/)과도 자주 사용됩니다.
- 그 외에도 단순 조건 판단 후 빠르게 종료할 때도 용이합니다.

```swift
func functionWithGuard(age: Int?) {

    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }

    print("당신의 나이는 \(unwrappedAge)세입니다")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
// 1
// 2

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }

    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }

    print("\(name): \(age)")
}

someFunction(info: ["name": "jenny", "age": "10"])
someFunction(info: ["name": "mike"])
someFunction(info: ["name": "yagom", "age": 10]) // yagom: 10
```

- *** if let / gurad 를 이용한 옵셔널 바인딩 비교 ****

```swift
// 1. if let 옵셔널 바인딩
if let unwrapped: Int = someValue {
// do something
   unwrapped = 3
}
// if 구문 외부에서는 unwrapped 사용이 불가능 합니다.
// unwrapped = 5

// 2. guard 옵셔널 바인딩
// gaurd 구문 이후에도 unwrapped 사용 가능합니다.
guard let unwrapped: Int = someValue else {
         return
}
unwrapped = 3
```

# :: 프로토콜 ::

**1. 프로토콜**

- ***프로토콜(Protocol)*** 은 특정 역할을 수행하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진을 정의합니다.
- 구조체, 클래스, 열거형은 프로토콜을 **채택(Adopted)** 해서 특정 기능을 수행하기 위한 프로토콜의 요구사항을 실제로 구현할 수 있습니다.
- 어떤 프로토콜의 요구사항을 모두 따르는 타입은 그 **프로토콜을 준수한다(Conform)** 고 표현합니다.
- 타입에서 프로토콜의 요구사항을 충족시키려면 **프로토콜이 제시하는 청사진의 기능을 모두 구현**해야 합니다. 즉, 프로토콜은 기능을 정의하고 제시 할 뿐이지 스스로 기능을 구현하지는 않습니다.

**2. 정의**

- **`protocol`** 키워드를 사용하여 정의합니다.

`protocol 프로토콜 이름 {
    /* 정의부 */
}`

**3. 구현**

**<<프로퍼티 요구>>**

- 프로퍼티 요구는 항상 var 키워드를 사용합니다
- get은 읽기만 가능해도 상관 없다는 뜻이며 get과 set을 모두 명시하면 읽기 쓰기 모두 가능한 프로퍼티여야 합니다

```swift
protocol Talkable {

    // 프로퍼티 요구
    var topic: String { get set }
    var language: String { get }

    // 메서드 요구
    func talk()

    // 이니셜라이저 요구
    init(topic: String, language: String)
}
```

**3. 프로토콜 채택 및 준수**

**<<프로토콜 채택>>**

- 타입명: 프로토콜 이름

```swift
// Person 구조체는 Talkable 프로토콜을 채택했습니다
struct Person: Talkable {
    // 프로퍼티 요구 준수
    var topic: String
    let language: String

    // 읽기전용 프로퍼티 요구는 연산 프로퍼티로 대체가 가능합니다
//    var language: String { return "한국어" }

    // 물론 읽기, 쓰기 프로퍼티도 연산 프로퍼티로 대체할 수 있습니다
//    var subject: String = ""
//    var topic: String {
//        set {
//            self.subject = newValue
//        }
//        get {
//            return self.subject
//        }
//    }

    // 메서드 요구 준수
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }

    // 이니셜라이저 요구 준수
    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}
```

- 프로퍼티 요구는 다양한 방법으로 해석, 구현 할 수 있습니다.

```swift
struct Person: Talkable {
    var subject: String = ""

    // 프로퍼티 요구는 연산 프로퍼티로 대체가 가능합니다
    var topic: String {
        set {
            self.subject = newValue
        }
        get {
            return self.subject
        }
    }

    var language: String { return "한국어" }

    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }

    init(topic: String, language: String) {
        self.topic = topic
    }
}
```

**4. 프로토콜 상속**

- 프로토콜은 하나 이상의 프로토콜을 상속받아 기존 프로토콜의 요구사항보다 더 많은 요구사항을 추가할 수 있습니다.
- 프로토콜 상속 문법은 클래스의 상속 문법과 유사하지만, 프로토콜은 클래스와 다르게 다중상속이 가능합니다.

```swift
protocol 프로토콜 이름: 부모 프로토콜 이름 목록 {
 /* 정의부 */
 }
```

```swift
protocol Readable {
    func read()
}
protocol Writeable {
    func write()
}
protocol ReadSpeakable: Readable {
    func speak()
}
protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}

struct SomeType: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    func write() {
        print("Write")
    }
    func speak() {
        print("Speak")
    }
}
```

**<<클래스 상속과 프로토콜>>**

- 클래스에서 상속과 프로토콜 채택을 동시에 하려면 상속받으려는 클래스를 먼저 명시하고 그 뒤에 채택할 프로토콜 목록을 작성합니다.

```swift
class SuperClass: Readable {
    func read() { }
}

class SubClass: SuperClass, Writeable, ReadSpeakable {
    func write() { }
    func speak() { }
}
```

**5. 프로토콜 준수 확인**

- is, as 연산자를 사용해서 인스턴스가 특정 프로토콜을 준수하는지 확인할 수 있습니다.

```swift
let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()

var someAny: Any = sup
someAny is Readable // true
someAny is ReadSpeakable // false

someAny = sub
someAny is Readable // true
someAny is ReadSpeakable // true

someAny = sup

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
} // read

if let someReadSpeakable: ReadSpeakable = someAny as? ReadSpeakable {
    someReadSpeakable.speak()
} // 동작하지 않음

someAny = sub

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
} // read
```

# :: 익스텐션 ::

**1. 익스텐션**

- *익스텐션(Extension)* 은 스위프트의 **강력한** 기능 중 하나입니다.
- 익스텐션은 **구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가** 할 수 있는 기능입니다.
- 기능을 추가하려는 타입의 구현된 소스 코드를 알지 못하거나 볼 수 없다 해도, **타입**만 알고 있다면 그 타입의 기능을 확장할 수도 있습니다.

**<<스위프트의 익스텐션이 타입에 추가할 수 있는 기능>>**

- 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
- 타입 메서드 / 인스턴스 메서드
- 이니셜라이저
- 서브스크립트
- 중첩 타입
- 특정 프로토콜을 준수할 수 있도록 기능 추가
- * 익스텐션은 타입에 새로운 기능을 추가할 수는 있지만, 기존에 존재하는 기능을 **재정의할 수는 없습니다.**

**<<클래스의 상속과 익스텐션 비교>>**

이 둘은 비슷해보이지만 실제 성격은 많이 다릅니다.

클래스의 상속은 클래스 타입에서만 가능하지만 익스텐션은 구조체, 클래스, 프로토콜 등에 적용이 가능합니다. 또 클래스의 상속은 특정 타입을 물려받아 하나의 새로운 타입을 정의하고 추가 기능을 구현하는 수직 확장이지만, 익스텐션은 기존의 타입에 기능을 추가하는 수평 확장입니다. 또, 상속을 받으면 기존 기능을 재정의할 수 있지만, 익스텐션은 재정의할 수 없다는 것도 큰 차이 중 하나입니다. 상황과 용도에 맞게 상속과 익스텐션을 선택하여 사용하면 됩니다.

|  | 상속 | 익스텐션 |
| --- | --- | --- |
| 확장 | 수직 확장 | 수평 확장 |
| 사용 | 클래스 타입 | 클래스, 구조체, 프로토콜, 제네릭 등 모든 타입 |
| 재정의 | 가능 | 불가능 |

**<< 익스텐션 활용>>**

익스텐션을 사용하는 대신 원래 타입을 정의한 소스에 기능을 추가하는 방법도 있겠지만, 외부 라이브러리나 프레임워크를 가져다 썼다면 원본 소스를 수정하지 못합니다. 이처럼 외부에서 가져온 타입에 내가 원하는 기능을 추가하고자 할 때 익스텐션을 사용합니다. 따로 상속을 받지 않아도 되며, 구조체와 열거형에도 기능을 추가할 수 있으므로 익스텐션은 매우 편리한 기능입니다.

익스텐션은 모든 타입에 적용할 수 있습니다. 모든 타입이라 함은 구조체, 열거형, 클래스, 프로토콜, 제네릭 타입 등을 뜻합니다. 즉, 익스텐션을 통해 모든 타입에 연산 프로퍼티, 메서드, 이니셜라이저, 서브스크립트, 중첩 데이터 타입 등을 추가할 수 있습니다. 더불어 익스텐션은 **프로토콜과 함께 사용**하면 굉장히 강력한 기능을 선사합니다. 이 부분과 관련해 프로토콜 중심 프로그래밍(Protocol Oriented Programming)에 대해 더 알아보는 것을 추천합니다.

**2. 정의**

- **`extension`** 키워드를 사용하여 정의합니다.

`extension 확장할 타입 이름 {
    /* 타입에 추가될 새로운 기능 구현 */
}`

- 익스텐션은 기존에 존재하는 타입이 추가적으로 다른 프로토콜을 채택할 수 있도록 확장할 수도 있습니다. 이런 경우에는 클래스나 구조체에서 사용하던 것과 똑같은 방법으로 프로토콜 이름을 나열해줍니다.

`extension 확장할 타입 이름: 프로토콜1, 프로토콜2, 프로토콜3... {
    /* 프로토콜 요구사항 구현 */
}`스위프트 라이브러리를 살펴보면 실제로 익스텐션이 굉장히 많이 사용되고 있음을 알 수 있습니다.

`Double` 타입에는 수많은 프로퍼티와 메서드, 이니셜라이저가 정의되어 있으며 수많은 프로토콜을 채택하고 있을 것이라고 예상되지만, 실제로 `Double` 타입의 정의를 살펴보면 그 모든것이 다 정의되어 있지는 않습니다. 그러면 `Double` 타입이 채택하고 준수해야 하는 수많은 프로토콜은 어디로 갔을까요? 어디에서 채택하고 어디에서 준수하도록 정의되어 있을까요? 당연히 답은 익스텐션입니다. 이처럼 스위프트 표준 라이브러리 타입의 기능은 대부분 익스텐션으로 구현되어 있습니다. `Double` 외에도 다른 타입들의 정의와 익스텐션을 찾아보면 더 많은 예를 보실 수 있습니다. 꼭 한 번 찾아보세요!

**3. 구현**

**<<연산 프로퍼티 추가>>**

- 아래 익스텐션은 `Int` 타입에 두 개의 **연산 프로퍼티**를 추가한 것입니다.
- `Int` 타입의 인스턴스가 홀수인지 짝수인지 판별하여 `Bool`타입으로 알려주는 연산 프로퍼티입니다.
- 익스텐션으로 `Int` 타입에 추가해준 연산 프로퍼티는 `Int` 타입의 어떤 인스턴스에도 사용이 가능합니다.
- 인스턴스 연산 프로퍼티를 추가할 수도 있으며, `static` 키워드를 사용하여 타입 연산 프로퍼티도 추가할 수 있습니다.

```swift
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven) // false
print(2.isEven) // true
print(1.isOdd)  // true
print(2.isOdd)  // false

var number: Int = 3
print(number.isEven) // false
print(number.isOdd) // true

number = 2
print(number.isEven) // true
print(number.isOdd) // false
```

**<<메서드 추가>>**

- 메서드 익스텐션을 통해 `Int` 타입에 **인스턴스 메서드**인 `multiply(by:)` 메서드를 추가했습니다.
- 여러 기능을 여러 익스텐션 블록으로 나눠서 구현해도 전혀 문제가 없습니다.
- 관련된 기능별로 하나의 익스텐션 블록에 묶어주는 것도 좋습니다.

```swift
extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}
print(3.multiply(by: 2))  // 6
print(4.multiply(by: 5))  // 20

number = 3
print(number.multiply(by: 2))   // 6
print(number.multiply(by: 3))   // 9
```

### 

**<<이니셜라이저 추가>>**

- 인스턴스를 초기화(이니셜라이즈)할 때 인스턴스 초기화에 필요한 다양한 데이터를 전달받을 수 있도록 여러 종류의 이니셜라이저를 만들 수 있습니다. 타입의 정의부에 이니셜라이저를 추가하지 않더라도 익스텐션을 통해 이니셜라이저를 추가할 수 있습니다.
- 익스텐션으로 클래스 타입에 편의 이니셜라이저는 추가할 수 있지만, 지정 이니셜라이저는 추가할 수 없습니다. 지정 이니셜라이저와 디이니셜라이저는 반드시 클래스 타입의 구현부에 위치해야 합니다(값 타입은 상관없습니다).

```swift
extension String {
    init(int: Int) {
        self = "\(int)"
    }
    
    init(double: Double) {
        self = "\(double)"
    }
}

let stringFromInt: String = String(int: 100) 
// "100"

let stringFromDouble: String = String(double: 100.0)    
// "100.0"
```

- * 익스텐션 활용하면 다양하고 강력한 기능을 구현할 수 있지만, 해당 타입에 적합한 익스텐션을 구현하도록 주의해야합니다.

# :: 오류 처리 ::

**1. 오류 처리**

- 스위프트에서 오류(Error)는 **`Error`**라는 프로토콜을 준수하는 타입의 값을 통해 표현됩니다.
- **`Error`** 프로토콜은 사실상 요구사항이 없는 빈 프로토콜일 뿐이지만, 오류를 표현하기 위한 타입(주로 **열거형**)은 이 프로토콜을 채택합니다.
- 스위프트의 **열거형**은 오류의 종류를 나타내기에 아주 적합한 기능입니다.
- 연관 값을 통해 오류에 관한 부가 정보를 제공할 수도 있습니다.

이번 예제에는 프로그램 내에서 자판기를 작동시키려고 할 때 발생하는 오류상황을 구현해 보았습니다.

**2. 오류 표현**

- **`Error`** 프로토콜과 (주로)**열거형**을 통해서 오류를 표현합니다.

```swift
enum VendingMachineError: Error {
    case invalidInput
    case insufficientFunds(moneyNeeded: Int)
    case outOfStock
}
```

- 자판기 동작 오류의 종류를 표현한 VendingMachineError 열거형

```swift
enum VendingMachineError: Error {
    case invalidInput
    case insufficientFunds(moneyNeeded: Int)
    case outOfStock
}
```

**3. 함수에서 발생한 오류 던지기**

자판기 동작 도중 발생한 오류를 던지는 메서드를 구현해봅니다.

- 오류 발생의 여지가 있는 메서드는 **`throws`**를 사용하여 오류를 내포하는 함수임을 표시합니다

```swift
class VendingMachine {
    let itemPrice: Int = 100
    var itemCount: Int = 5
    var deposited: Int = 0
    
    // 돈 받기 메서드
    func receiveMoney(_ money: Int) throws {
        
        // 입력한 돈이 0이하면 오류를 던집니다
        guard money > 0 else {
            throw VendingMachineError.invalidInput
        }
        
        // 오류가 없으면 정상처리를 합니다
        self.deposited += money
        print("\(money)원 받음")
    }
    
    // 물건 팔기 메서드
    func vend(numberOfItems numberOfItemsToVend: Int) throws -> String {
        
        // 원하는 아이템의 수량이 잘못 입력되었으면 오류를 던집니다
        guard numberOfItemsToVend > 0 else {
            throw VendingMachineError.invalidInput
        }
        
        // 구매하려는 수량보다 미리 넣어둔 돈이 적으면 오류를 던집니다
        guard numberOfItemsToVend * itemPrice <= deposited else {
            let moneyNeeded: Int
            moneyNeeded = numberOfItemsToVend * itemPrice - deposited
            
            throw VendingMachineError.insufficientFunds(moneyNeeded: moneyNeeded)
        }
        
        // 구매하려는 수량보다 요구하는 수량이 많으면 오류를 던집니다
        guard itemCount >= numberOfItemsToVend else {
            throw VendingMachineError.outOfStock
        }
        
        // 오류가 없으면 정상처리를 합니다
        let totalPrice = numberOfItemsToVend * itemPrice
        
        self.deposited -= totalPrice
        self.itemCount -= numberOfItemsToVend
        
        return "\(numberOfItemsToVend)개 제공함"
    }
}

// 자판기 인스턴스
let machine: VendingMachine = VendingMachine()

// 판매 결과를 전달받을 변수
var result: String?
```

**4. 오류 처리**

- 오류를 던질 수도 있지만 오류가 던져지는 것에 대비하여 던져진 오류를 처리하기 위한 코드도 작성해야 합니다. 예를 들어 던져진 오류가 무엇인지 판단하여 다시 문제를 해결한다든지, 다른 방법으로 시도해 본다든지, 사용자에게 오류를 알리고 사용자에게 선택 권한을 넘겨주어 다음에 어떤 동작을 하게 할 것인지 결정하도록 유도하는 등의 코드를 작성해야 합니다.
- 오류발생의 여지가 있는 `throws` 함수(메서드)는 `try`를 사용하여 호출해야합니다. `try`와 `do-catch`, `try?`와 `try!` 등에 대해 알아봅니다.

**`<<do-catch>>`**

- 오류발생의 여지가 있는 `throws` 함수(메서드)는 `do-catch` 구문을 활용하여 오류발생에 대비합니다.
- 가장 정석적인 방법으로 모든 오류 케이스에 대응합니다

```swift
do {
    try machine.receiveMoney(0)
} catch VendingMachineError.invalidInput {
    print("입력이 잘못되었습니다")
} catch VendingMachineError.insufficientFunds(let moneyNeeded) {
    print("\(moneyNeeded)원이 부족합니다")
} catch VendingMachineError.outOfStock {
    print("수량이 부족합니다")
} // 입력이 잘못되었습니다
```

- 하나의 catch 블럭에서 switch 구문을 사용하여 오류를 분류해봅니다. 굳이 위의 것과 크게 다를 것이 없습니다.

```swift
do {
    try machine.receiveMoney(300)
} catch /*(let error)*/ {
    
    switch error {
    case VendingMachineError.invalidInput:
        print("입력이 잘못되었습니다")
    case VendingMachineError.insufficientFunds(let moneyNeeded):
        print("\(moneyNeeded)원이 부족합니다")
    case VendingMachineError.outOfStock:
        print("수량이 부족합니다")
    default:
        print("알수없는 오류 \(error)")
    }
} // 300원 받음
```

- 딱히 케이스별로 오류처리 할 필요가 없으면 catch 구문 내부를 간략화해도 무방합니다.

```swift
do {
    result = try machine.vend(numberOfItems: 4)
} catch {
    print(error)
} // insufficientFunds(100)
```

- 케이스별로 오류처리 할 필요가 없으면 do 구문만 써도 무방합니다

```swift
do {
    result = try machine.vend(numberOfItems: 4)
}
```

**`<<try?` 와 `try!>>`**

**1. try?**

- 별도의 오류처리 결과를 통보받지 않고 오류가 발생했으면 결과값을 `nil`로 돌려받을 수 있습니다.
- 정상동작 후에는 옵셔널 타입으로 정상 반환값을 돌려 받습니다.

```swift
result = try? machine.vend(numberOfItems: 2)
result // Optional("2개 제공함")

result = try? machine.vend(numberOfItems: 2)
result // nil
```

### **`2. try!`**

- 오류가 발생하지 않을 것이라는 강력한 확신을 가질 때 `try!`를 사용하면 정상동작 후에 바로 결과값을 돌려받습니다.
- 오류가 발생하면 런타임 오류가 발생하여 애플리케이션 동작이 중지됩니다.

```swift
result = try! machine.vend(numberOfItems: 1)
result // 1개 제공함

//result = try! machine.vend(numberOfItems: 1)
// 런타임 오류 발생!
```

- **더 알아보기:**

추가적으로 더 알아보면 좋은 개념입니다.

- `rethrows`
- `defer`

# : 고차 함수 ::

**1. 고차 함수**

- **고차 함수(Higher-order function)**는 '다른 함수를 전달인자로 받거나 함수실행의 결과를 함수로 반환하는 함수'를 뜻합니다
- 스위프트의 함수(클로저)는 일급시민(일급객체)이기 때문에 함수의 전달인자로 전달할 수 있으며, 함수의 결과값으로 반환할 수 있습니다
- 이번 파트에서는 스위프트 표준라이브러리에서 제공하는 유용한 고차함수[map, filter, reduce]에 대해 알아봅니다
- `map`, `filter`, `reduce` 함수는 스위프트 표준 라이브러리의 컨테이너 타입(`Array`, `Set`, `Dictionary` 등)에 구현되어 있습니다

**`2. map`**

- `map`함수는 컨테이너 내부의 **기존 데이터를 변형(transform)하여 새로운 컨테이너를 생성**합니다.

```swift
// 변형하고자 하는 numbers와 변형 결과를 받을 doubledNumbers, strings

let numbers: [Int] = [0, 1, 2, 3, 4]
var doubledNumbers: [Int]
var strings: [String]
```

**<<기존의 for 구문 사용>>**

```swift
doubledNumbers = [Int]()
strings = [String]()

for number in numbers {
    doubledNumbers.append(number * 2)
    strings.append("\(number)")
}

print(doubledNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]
```

**<<map 메서드 사용>>**

```swift
// numbers의 각 요소를 2배하여 새로운 배열 반환
doubledNumbers = numbers.map({ (number: Int) -> Int in
    return number * 2
})

// numbers의 각 요소를 문자열로 변환하여 새로운 배열 반환
strings = numbers.map({ (number: Int) -> String in
    return "\(number)"
})

print(doubledNumbers) // [0, 2, 4, 6, 8]
print(strings) // ["0", "1", "2", "3", "4"]

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
doubledNumbers = numbers.map { $0 * 2 }
print(doubledNumbers) // [0, 2, 4, 6, 8]
```

**`3.filter`**

- `filter`함수는 컨테이너 내부의 **값을 걸러서 새로운 컨테이너로 추출**합니다.

**<<기존의 for 구문 사용>>**

```swift
// 변수 사용에 주목하세요
var filtered: [Int] = [Int]()

for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}

print(filtered) // [0, 2, 4]
```

**<<filter 메서드 사용>>**

```swift
// numbers의 요소 중 짝수를 걸러내어 새로운 배열로 반환
let evenNumbers: [Int] = numbers.filter { (number: Int) -> Bool in
    return number % 2 == 0
}
print(evenNumbers) // [0, 2, 4]

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
let oddNumbers: [Int] = numbers.filter {
    $0 % 2 != 0
}
print(oddNumbers) // [1, 3]
```

**4. reduce**

- `reduce`함수는 컨테이너 내부의 **콘텐츠를 하나로 통합**합니다.

```swift
// 통합하고자 하는 someNumbers
let someNumbers: [Int] = [2, 8, 15]
```

**<<기존의 for 구문 사용>>**

```swift
// 변수 사용에 주목하세요
var result: Int = 0

// someNumbers의 모든 요소를 더합니다
for number in someNumbers {
    result += number
}

print(result) // 25
```

**<<reduce 메서드 사용>>**

```swift
// 초깃값이 0이고 someNumbers 내부의 모든 값을 더합니다.
let sum: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) + \(second)") //어떻게 동작하는지 확인해보세요
    return first + second
})

print(sum)  // 25

// 초깃값이 0이고 someNumbers 내부의 모든 값을 뺍니다.
var subtract: Int = someNumbers.reduce(0, { (first: Int, second: Int) -> Int in
    //print("\(first) - \(second)") //어떻게 동작하는지 확인해보세요
    return first - second
})

print(subtract) // -25

// 초깃값이 3이고 someNumbers 내부의 모든 값을 더합니다.
let sumFromThree = someNumbers.reduce(3) { $0 + $1 }

print(sumFromThree) // 28
```