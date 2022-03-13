// Swift Challange


//Challange 1
//Write a function that accepts a String as its only parameter, and returns true if the string has
//only unique letters, taking letter case into account.

func challange1(input : String) -> Bool {
    var usedLetters = [Character]()
    
    for  letter in  input {
        if usedLetters.contains(letter){
            return false
        }
        usedLetters.append(letter)
    }
    
    return true
    
}
challange1(input: "No duplicates")//true
challange1(input: "abcdefghijklmnopqrstuvwxyz")// true
challange1(input: "AaBbCc")// true
challange1(input: "Hello, world")// true
func challange1b(input: String) -> Bool {
    return Set(input).count == input.count
}
challange1b(input: "No duplicates")// true
challange1b(input: "AaBbCc")// true
challange1b(input: "abcdefghijklmnopqrstuvwxyz")//true
challange1b(input: "Hello, world")// false

// challange2
//Write a function that accepts a String as its only parameter, and returns true if the string
//reads the same when reversed, ignoring case.
func challange2(input: String) -> Bool {
 
    return  input.reversed() == Array(input)
    
}
challange2(input: "rotator") //true
challange2(input: "Rats live on no evil star") // false
challange2(input: "Never odd or even")// false
challange2(input: "Hello, world") // false
func challange2b(input: String) -> Bool {
    let lowercase = input.lowercased()
    return  lowercase.reversed() == Array(lowercase)
}
challange2b(input: "rotator")// true
challange2b(input: "Rats live on no evil star")// true
challange2b(input: "Never odd or even")// false
challange2b(input: "Hello, world") // false

//challange3

//Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.

func challange3(string1: String , string2 : String) -> Bool {
    var checkingString = string2
    for letters in string1{
        if let index = checkingString.firstIndex(of: letters){
            checkingString.remove(at: index)
        }else{
            return false
        }
    }
    return checkingString.count == 0
    
}

challange3(string1: "abca", string2: "abca")
challange3(string1: "abc", string2: "cab")
challange3(string1: "a1 b2", string2: "b1 a2")
challange3(string1: "abc", string2: "abca")
challange3(string1: "abc", string2: "cbaa")

func challange3b(string1:String , string2: String) -> Bool{
    
    let array1 = Array(string1)
    let array2 = Array(string2)
    return array1.sorted() == array2.sorted()
    
    
}
challange3b(string1: "abca", string2: "abca")
challange3b(string1: "abc", string2: "cab")
challange3b(string1: "a1 b2", string2: "b1 a2")
challange3b(string1: "abc", string2: "abca")
challange3b(string1: "abc", string2: "cbaa")
