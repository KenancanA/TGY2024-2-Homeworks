import UIKit

//İki 3 basamaklı sayının çarpımından elde edilen en büyük palindromu bulun.

//1'den 20'ye kadar olan tüm sayılara bölünmeden bölünebilen en küçük pozitif sayı nedir?

func smallestNumberDivisible( lowerLimit: Int, upperLimit: Int) -> Int {
    var result = upperLimit

    while true {
        var divisible = true
        for i in lowerLimit...upperLimit {
            if result % i != 0 {
                divisible = false
                break
            }
        }
        if divisible {
            return result
        }
        result += upperLimit
    }
}

let lowerLimit = 1
let upperLimit = 20
let result = smallestNumberDivisible(lowerLimit: lowerLimit, upperLimit: upperLimit)
print("1'den \(upperLimit)'e kadar olan tüm sayılara bölünmeden bölünebilen en küçük pozitif sayı: \(result)")

//İlk yüz doğal sayının karelerinin toplamı ile toplamın karesi arasındaki farkı bulun.

func sumSquareDifference(n: Int) -> Int {
    var sumOfSquares = 0
    var sum = 0
    
    for i in 1...n {
        sumOfSquares += i * i
        sum += i
    }
    
    let squareOfSum = sum * sum
    let difference = squareOfSum - sumOfSquares
    
    return difference
}

let n = 100
let difference = sumSquareDifference(n: n)
print("İlk \(n) doğal sayının karelerinin toplamı ile toplamın karesi arasındaki fark: \(difference)")


