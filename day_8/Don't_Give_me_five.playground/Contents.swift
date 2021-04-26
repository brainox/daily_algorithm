import UIKit

func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
    var arr = (start...end).map {$0}
    let newArray = arr.filter {String($0).contains(String(5))}
    for i in newArray {
        arr.removeAll() {$0 == i}
    }
    return arr.count
}

dontGiveMeFive(4, 17)


//MARK:- Easier method



var arr = [1,2,3,4,5,6,7,8,9,15]

//
//
let newArr = (0...16).filter {!String($0).contains(String(5))}
print(newArr)

