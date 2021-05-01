import UIKit

public func solution(_ N : Int) -> Int {
    let binary = String(N, radix: 2)
    
    var arr: [Int] = []

    for (index, value) in binary.enumerated() {
        if value == "1" {
            arr.append(index)
        }
    }
    var final = Array<Int>()
    for i in 0..<arr.count - 1 {
        let res = (arr[i+1] - arr[i]) - 1
        if res == 0 {
            continue
        }
        print(res)
        final.append(res)
    }
    return (Int(final.max() ?? 0))
}

solution(529)


