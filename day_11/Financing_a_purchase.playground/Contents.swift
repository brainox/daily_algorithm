import UIKit

func amort(_ rate: Double, _ balance: Double, _ term: Int, _ numPayments: Int) -> String {
    var newBalance = balance
    var c: Double
    var n: Double
    var r: Double
    var princ: Double
    var d: Double
    var interest: Double
    
    r = rate / 1200

    d  = 1 - (pow((1 + r), -Double(term)))
    print(d)

    n =  r * balance
    print(n)

    c = n/d
    print(c)

    interest = balance * r
    print(interest)

    princ =  c - interest
    print(princ)

    for _ in 1...numPayments {
        interest = newBalance * r
        princ = c - interest
        newBalance -= (princ)
    }
    
    print("num_payment \(numPayments) c \(Int(round(c))) princ \(Int(round(princ))) int \(Int(round(interest))) balance \(Int(round(newBalance)))")
    
    return "num_payment \(numPayments) c \(Int(round(c))) princ \(Int(round(princ))) int \(Int(round(interest))) balance \(Int(round(newBalance)))"
}

//   testing(7.4, 10215, 24, 20, "num_payment 20 c 459 princ 445 int 14 balance 1809")
//testing(7.9, 107090, 48, 41, "num_payment 41 c 2609 princ 2476 int 133 balance 17794")
amort(7.4, 10215, 24, 20)

