//: [Previous](@previous)

import Foundation

//EJER1: Funcion que recibe un string y comprueba si este es un 
func palindrome (_ myArray: String)-> Bool {
    var myComp = ""
    for n in myArray{
        myComp.insert(n, at: myComp.startIndex)
    }
    if myComp == myArray{
        return true
    }
    else{
        return false
        
    }
}

//EJER2: Funcion que recibe un string y comprueba si este es un palindromo, permite un caracter erroneo
    func palindrome2 (_ myArray: String)-> Bool {
        var myComp = ""
        for n in myArray{
            myComp.insert(n, at: myComp.startIndex)
        }
        
        if myComp == myArray{
            return true
        }
        else{
            return false
        }
}


// Helper de EJER4: Recibe un string y cuenta la cantidad de caracteres que tiene de cada letra, da salida a lista con letra:cantidad
func contadorChars(_ string: String)-> [Character: Int]{
    var string = string.lowercased()
    var contador: [Character: Int] = [:]
    for i in string{
        var helper = 0
        for (letra,cantidad) in contador{
            if letra == i{
                contador.updateValue(cantidad + 1 , forKey: i)
                helper = 1
            }
        }
        if i.isLetter && helper == 0{
            contador.updateValue(1, forKey: i)
        }
    }
    return contador
}

//EJER4: Funcion que recibe dos strings, verificar si el segundo es un anagrama del primero
func anagrams (_ string: String, _ anagram: String) -> Bool{
    print(string)
    var contador = contadorChars(string)
    var contador2 = contadorChars(anagram)
    let sortedString = contador.sorted(by: > )
    let sortedAnagram = contador2.sorted(by: > )
    
    var j = 0
    for i in sortedAnagram{
        if i != sortedString[j]{
            return false
        }
        j+=1
    }
    return true
}

//EJER15: Funcion que recibe una lista y una cantidad N, se buscaran la N cantidad de los numeros mayores del arreglo
func largestElements(_ lista: [Int], _ n: Int) -> [Int]{
    var listaLargest: [Int]  = [0]
    for i in 1...n{
        listaLargest.append(0)
        for j in lista{
            if j > listaLargest[i] && listaLargest.contains(j) == false{
                listaLargest[i] = j
            }
        
        }
    }
    listaLargest.remove(at: listaLargest.startIndex)
    return listaLargest
}
    


print(palindrome("abba")) // true
print(palindrome("abcdefg")) // false
var list = [5, 1, 3]
print(largestElements(list, 2)) // [3, 5]
print(largestElements(list, 3)) // [5, 1, 3]
print(anagrams("rail safety", "fairy tales")) //--> True
print(anagrams("RAIL! SAFETY!", "fairy tales")) //--> True
print(anagrams("Hi there", "Bye there")) //--> False
