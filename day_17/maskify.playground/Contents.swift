import UIKit

/*Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.
 
 Your task is to write a function maskify, which changes all but the last four characters into '#'.

 Examples
 Input Output Comments
 "4556364607935616" "############5616"
 "64607935616" "#######5616"
 "1" "1" No #s if less than 4 characters
 "" "" Make sure to handle empty strings
 "Skippy" "##ippy"
 Documentation
 maskify(cc)
 Parameters:
 cc: String
 A string of any characters.

 Guaranteed Cons*/




func maskify(_ letter: String) -> String {
    var newStr: String = ""
    if letter.isEmpty {
        return letter
    } else if letter.count <= 4 {
        return letter
    } else {
        let lenOfHash = letter.count - 4
        let numHash = String(repeating: "#", count: lenOfHash)
        newStr += numHash + letter.suffix(4)
        return newStr
    }
}

maskify("4556364607935616")




