/*
Write a function that accepts a String as its only parameter, and returns true if the string has
only unique letters, taking letter case into account.
*/

// the first argument will always be the name of the file, the 2nd will be 
// the first one passed which is what I am after.
let input = CommandLine.arguments[1]
print("input is \(input)")
let characters = Array(input)
print(characters)
var temp = [String]()
var pass = true

func challenge1(input: String) -> String {
    for i in 0..<characters.count {
        print("Current character is: \(characters[i])")
        print(type(of: characters[i]))
    
        // Have to convert the type Character to String value to use .contains
        if temp.contains(String(characters[i])) {
            print("\(temp) contains \(characters[i]).")
            pass = false
        } else {
            temp.append(String(characters[i]))
        }
        print("temp contains: \(temp)")
    }
    print("The result is \(pass)")
    return "pass"
}

// the _= skips the error of the return "pass" in the function not being used
// warning: result of call to 'challenge1(input:)' is unused
_=challenge1(input: input)