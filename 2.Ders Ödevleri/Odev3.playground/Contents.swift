import UIKit


//1-1000 'un altındaki tüm 3 veya 5 'in katlarının toplamını bulun.
var toplam = 0
for kat in 1...999{
    if kat % 3 == 0 || kat % 5 == 0{
      toplam += kat
    }
}
print (toplam)

//2-Fibonacci dizisindeki değerleri dört milyonu geçmeyen terimleri düşünerek, çift değerli terimlerin toplamını bulun. 32.adım dahil
var toplamFibonacci: Int = 0
var a = 0
var b = 1
var c = 0

for fibonacci in 0...32{
    a = b
    b = c
    c = a + b

    if c % 2 == 0{
        toplamFibonacci += c
    }
}
print(toplamFibonacci)

//600851475143 sayısının en büyük asal çarpanı nedir?

