import UIKit

/*You have to search all numbers from inclusive 1 to inclusive a given number x, that have the given digit d in it.
 The value of d will always be 0 - 9.
 The value of x will always be greater than 0.

 You have to return as an array

 the count of these numbers,
 their sum
 and their product.

 For example:
 x = 11
 d = 1
 ->
 Numbers: 1, 10, 11
 Return: [3, 22, 110]

 If there are no numbers, which include the digit, return [0,0,0].*/


//
//typealias Long = Int64
//
//func numbersWithDigitInside(_ x:Long, _ d: Long) -> [Long] {
//
//    // the parameters to what I can understand
//
//     let check = x
//
//    let secondNum = String(d)
//    var result = [String]()
//
//    // check is x
//
//    for i in (0...check) {
//        result.append(String(i))
//
//    }
//
//   if secondNum == "0" {
//        result.removeFirst()
//    }
//
//    //count is d
//    var newArr = [Long]()
//    var count: Long = 0
//    for i in result {
//        if i.contains(secondNum) {
//            newArr.append(Long(i)!)
//            count += 1
//        }
//    }
//
//    var newestArr = [Long]()
//    for i in newArr {
//        if i == 0 {
//            continue
//        } else {
//            newestArr.append(i)
//        }
//    }
//    print(newestArr)
//    let multiplyResult: Long;
//    if newestArr == [] {
//        multiplyResult = newestArr.reduce(0, *)
//    } else {
//        multiplyResult = newestArr.reduce(1, *)
//    }
//
//
//
//    let addResult = newestArr.reduce(0, +)
//
//    let finalResult = [count, addResult, multiplyResult]
//
////    print("The count of 1 is \(count)")
////    print("The added result of 1 is \(addResult)")
////    print("The multiplied result of 1 is \(multiplyResult)")
////
////
////
////    print(finalResult)
//    return finalResult
//
//}



// MARK:- Easier Method
func numbersWithDigitInside1(_ x: Int64, _ d: Int64) -> [Int64] {
   let numbers = (1...x).filter {String($0).contains(String(d))}
    print(numbers)
    return [Int64(numbers.count),
            numbers.reduce(Int64(0), +),
            numbers.count > 0 ? numbers.reduce(Int64(1), *) : Int64(0)]
}

numbersWithDigitInside1(11,1)


/*numbersWithDigitInside(5,6), [0, 0, 0])
 numbersWithDigitInside(7,6), [1, 6, 6]
 numbersWithDigitInside(11,1), [3, 22, 110]
 numbersWithDigitInside(20,0), [2, 30, 200]
 numbersWithDigitInside(44,4), [9, 286, 5955146588160]*/
