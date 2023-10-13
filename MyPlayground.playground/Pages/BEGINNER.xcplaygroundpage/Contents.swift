import UIKit
import Foundation


// FUNCIONES DE DIFICULTAD BEGINNER


//Funcion que suma dos numeros
/*           */
func suma(_ NUM1:Int,_ NUM2: Int) -> Int {
    var sum = 0
    sum = NUM1 + NUM2
    print (sum)
    return sum
}

//EJER1: Funcion que convierta en mayuscula la primer letra de cada palabra de la oracion
func capitalizeSentence (_ mySntnc: String) -> String {
    var capSntnc = "";
    var word = "";
    var i = 0
    for n in mySntnc {
        i = i + 1
        word.insert(n ,at: word.endIndex)
        if n == " " || n == mySntnc.last {
            capSntnc = capSntnc + word.capitalized
            word = ""
        }
    }
    return capSntnc
}

// EJER2: Funcion que toma una lista y regresa los valores nones de esta
func getOdd(_ list: [Int]) -> [Int] {
    var myOdds: [Int] = []
    for n in list{
        if n%2 != 0{
            myOdds.insert(n , at: myOdds.endIndex)
        }
    }
    return myOdds
}

//EJER3: Funcion que recibe dos rangos y verifica si el rango 1 contiene el rango 2
func containsRange(_ range1: ClosedRange<Int>, _ range2: ClosedRange<Int>) -> Bool {
    for n in range2{
        if range1.contains(n) != true{
            return false
        }
    }
    return true
}

//EJER4: Funcion que recibe un N y calcula la suma de los valores del 1 a N
func addUpTo (_ n: Int) -> Int{
    var sum = 0
    for i in 1...n{
        sum  = sum + i
    }
    return sum
}

//EJER5: Funcion que recibe un lista de caracteres y un character y checa si la lista contiene el caracter, de ser asi regresar la posisicon en la que se encuentra, del contrario regresa -1
func getIndex(_ list1: [String], _ N: String) -> Int{
    var position = 0
    for n in list1{
        if N == n{
            return position
        }
        position+=1
    }
    return -1
}

func countDown(_ n: Int) -> [Int]{
    var list: [Int] = []
    var i = n
    while i >= 0{
        list.append(i)
        i = i - 1
    }
    return list
}



print("Hello World")
print (capitalizeSentence("flower"))
print (capitalizeSentence("this is a house"))
var list1 = [1, 2, 3]
var list2 = [4, 6, 8, 7, 9]
print(getOdd(list1)) // 1, 3
print(getOdd(list2)) // 7, 9
print (containsRange(5...7, 5...7)) // true
print (containsRange(1...12, 5...7)) // true
print (containsRange(5...8, 5...9)) // false
print (addUpTo(1)) // 1
print(addUpTo(2)) // 3
print(addUpTo(3)) // 6
print(getIndex(["A", "B", "C"], "A")) // 0
print(getIndex(["A", "B", "C"], "B")) // 1
print(getIndex(["A", "B", "C"], "D")) // -1
print(countDown(1)) // [1, 0]
print(countDown(4)) // [4, 3, 2, 1, 0])

