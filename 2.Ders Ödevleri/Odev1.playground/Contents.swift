import UIKit


/*Elimizde sadece harflerden oluşan uzun stringler var. Bu stringler içinde bazı harflerin tekrar edeceğini düşünün. Mesela 'a' harfi 20 farklı yerde geçiyor olabilir. Bir fonksiyon ile verilen parametre değerine eşit ve daha fazla bulunan harfleri siliniz. Sonra geriye kalan stringi ekrana yazınız.
ÖR: string:"aaba kouq bux"
Tekrar sayısı 2 olduğunda: a,b,u silinir
Tekrar sayısı 3 olduğunda: a silinir*/

func filterCharacters(_ input: String, withMaxRepetition maxRepetition: Int) -> String {
    var charCounts = [Character: Int]()

    for char in input {
        charCounts[char, default: 0] += 1
    }

    var filteredString = ""
    for char in input {
        if let count = charCounts[char], count < maxRepetition {
            filteredString.append(char)
        }
    }

    return filteredString
}

let input = "aaacjkk jlmmmne uuuyygmv jaak "
let maxRepetition = 2
let filteredResult = filterCharacters(input, withMaxRepetition: maxRepetition)
print(filteredResult)

