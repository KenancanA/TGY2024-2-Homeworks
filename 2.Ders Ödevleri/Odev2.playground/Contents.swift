import UIKit


/*2-Elimizde uzun bir cümle olsun. Bazı kelimelerin tekrar edildiğini düşünün. İstediğimiz ise hangi kelimeden kaç tane kullanıldığını bulmak.
String = "Merhaba nasılsınız iyiyim siz nasılsınız bende iyiyim"
Merhaba 1 kere, nasılsınız 2 kere iyiyim 2 kere*/

let input = "Merhaba nasılsınız iyiyim siz nasılsınız bende iyiyim"
var wordCounts = [String: Int]()

let words = input.components(separatedBy: " ")

for word in words {
    if let count = wordCounts[word] {
        wordCounts[word] = count + 1
    } else {
        wordCounts[word] = 1
    }
}

for (word, count) in wordCounts {
    print("\(word): \(count) kere")
}

