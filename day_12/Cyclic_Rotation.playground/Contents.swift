import UIKit

var arr = [3, 8, 9, 7, 6]


for _ in 1...3 {
    let lastValue = arr.removeLast()
    arr.insert(lastValue, at: 0)
}

print(arr)
