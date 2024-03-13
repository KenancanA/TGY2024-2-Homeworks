import UIKit


//1-1000 'un altındaki tüm 3 veya 5 'in katlarının toplamını bulun.
var total = 0
for multiple in 1...999{
    if multiple % 3 == 0 || multiple % 5 == 0{
      total += multiple
    }
}
print (total)

//2-Fibonacci dizisindeki değerleri dört milyonu geçmeyen terimleri düşünerek, çift değerli terimlerin toplamını bulun. 32.adım dahil
var totalFibonacci: Int = 0
var a = 0
var b = 1
var c = 0

for fibonacci in 0...32{
    a = b
    b = c
    c = a + b

    if c % 2 == 0{
        totalFibonacci += c
    }
}
print(totalFibonacci)

//600851475143 sayısının en büyük asal çarpanı nedir?

var number = 600851475143
var largestPrime = 0
var divisor = 2

while number > 1 {
    if number % divisor == 0 {
        number /= divisor
        largestPrime = divisor
    } else {
        divisor += 1
    }
}

print("En büyük asal çarpan: \(largestPrime)")

