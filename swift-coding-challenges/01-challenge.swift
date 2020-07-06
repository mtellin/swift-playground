/*
Write a function that accepts a String as its only parameter, and returns true if the string has
only unique letters, taking letter case into account.
*/
let input = "testing"
let characters = Array(input)
print(characters)
var temp = [String]()

for i in 0..<characters.count {
    print(characters[i])
    if temp.contains(characters[i].map(String.init)) == false {
        print("dup found")
    }
    
    /* for j in 0..<temp.count {
        if string[i] != temp[j] {
            //string[i] += temp
            temp.append(string[i])
        }
    }
    */
}

// testing
