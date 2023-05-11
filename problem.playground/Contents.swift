/*
 Task: Write a function called firstNonRepeated that takes a single string s as input and returns the first non-repeated character in the string. If there is no non-repeated character, return an empty string.
 
 Input: A string s containing lowercase and/or uppercase English letters.
 
 Output: A string representing the first non-repeated character in the input string or an empty string if there is no non-repeated character.
 
 Example:
 firstNonRepeated("hello") => "h"
 firstNonRepeated("aabcc") => "b"
 firstNonRepeated("aabbcc") => ""
 */

func firstNonRepeated(_ s: String) -> String {
    // First I am creating an empty dictionary to store count for each character given
    var charactersCount = [Character: Int]()
    // Also, if we want to treat lowercase and uppercase as same character, we could use something like:
    // var lowercased = s.lowercased() and use lowercased property instead of s in for loops.
    // Since Character type is case-sensitive and I didn't see any requirements regards to this, I am leaving it as is.
        
        // Create for loop to iterate through given string by characters and increment count if duplicate
        for char in s {
            if let count = charactersCount[char] {
                charactersCount[char] = count + 1
            } else {
                charactersCount[char] = 1
            }
        }
        
        // Create another for loop to print first non-repeating string
        for char in s {
            if let count = charactersCount[char], count == 1 {
                return String(char)
            }
        }
        
        return ""
}

print(firstNonRepeated("hello"))
print(firstNonRepeated("aabcc"))
print(firstNonRepeated("aabbcc"))

// Extra test cases
print(firstNonRepeated("fleetscoffee"))
print(firstNonRepeated("mobileapplicationdeveloper"))
print(firstNonRepeated("toronto"))
print(firstNonRepeated("zzz"))
print(firstNonRepeated("zzxcc"))
