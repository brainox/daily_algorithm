import UIKit
let a1 = ["live", "arp", "strong"]
let a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    var newArr: [String] = []
    for i in a1 {
        for j in a2 {
            if j.contains(i){
                newArr.append(i)
            }
            else {
                continue
            }
        }
    }
    let result = Set(newArr)
    
    return Array(result).sorted()
    
}


inArray(a1, a2)
