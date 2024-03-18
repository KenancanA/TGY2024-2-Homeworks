import UIKit

//1
func printPlusMinus(upTo n: Int) {
    var pattern = ""
    
    for i in 1...n {
        if i % 2 == 0 {
            pattern += "-"
        } else {
            pattern += "+"
        }
    }
    

    print(pattern)
}
let n = 5
printPlusMinus(upTo: n)

//-----------------------------------------------------------
//2
func makeLargestWithFive(_ number: Int) -> Int {
    
    let absNumber = abs(number)
    
    let sign = number < 0 ? -1 : 1
    
    
    var digitCount = 1
    var tempNumber = absNumber
    while tempNumber >= 10 {
        digitCount *= 10
        tempNumber /= 10
    }
    
   
    let newNumber = (absNumber / digitCount) * (digitCount * 10) + 5 * sign
    
    return newNumber
}


let number = 920
let largestNumberWithFive = makeLargestWithFive(number)
print("Parametre \(number) için en büyük sayı: \(largestNumberWithFive)")


