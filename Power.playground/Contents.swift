import UIKit

// Define a new infix operator **
infix operator **: MultiplicationPrecedence

// ** operator for types conforming Numeric and SignedNumeric
func ** <T: Numeric & SignedNumeric>(lhs: T, rhs: Int) -> T {
    var res: T = 1
    if rhs > 0 {
        for _ in 0..<rhs {
            res *= lhs
        }
    } else if rhs == 0 {
        res = 1
    } else {
        fatalError("The ** operator is only implemented for positive powers")
    }

    return res
}

let a = 3 ** 3
