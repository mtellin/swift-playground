/*
Write a function that accepts a String as its only parameter, and returns true if the string has
only unique letters, taking letter case into account.
*/
let input = "Testingtesting123"
let characters = Array(input)
print(characters)
var temp = [String]()

for i in 0..<characters.count {
    print(characters[i])
    print(type(of: characters[i]))
// Have to convert the type Character to String value to use .contains
    if temp.contains(String(characters[i])) {
      print("\(temp) contains \(characters[i]).")
    } else {
      temp.append(String(characters[i]))
    }
print("temp contains: \(temp)")

/*
    if temp.contains(characters[i]) {
      print("yes")
    }
*/

/*
thought i was on to something here but seems like i cant use .map on a string
    if temp.contains(characters[i].map(String.init)) == false {
        print("dup found")
    }
 */   
    /* for j in 0..<temp.count {
        if string[i] != temp[j] {
            //string[i] += temp
            temp.append(string[i])
        }
    }
    */
}

// testing
