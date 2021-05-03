import UIKit

let num = 1928
let convNum = String(num).reversed()



for (key, value) in convNum.enumerated() {
    let intValue = Int(String(value))!
    let doubleKey = Double(key)
    let placeValue = pow(10.0, doubleKey)
    let result = Int(placeValue) * intValue
    print(result)
}


//MARK:- USING JAVASCRIPT TO SOLVE IT
/*var num = 100
 var lookup = {M:1000,CM:900,D:500,CD:400,C:100,XC:90,L:50,XL:40,X:10,IX:9,V:5,IV:4,I:1};
 var roman = '';
 var i;

 for ( i in lookup ) {
   console.log(i)
   while ( num >= lookup[i] ) {

     roman += i;
     num -= lookup[i];
   }
 }
 console.log(roman)*/
