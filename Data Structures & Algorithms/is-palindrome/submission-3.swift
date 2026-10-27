class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var charsArray: [String] = []
        var ascii_a: UInt8 = Character("a").asciiValue!
        var ascii_z: UInt8 = Character("z").asciiValue!
        var ascii_A: UInt8 = Character("A").asciiValue!
        var ascii_Z: UInt8 = Character("Z").asciiValue!
        var ascii_0: UInt8 = Character("0").asciiValue!
        var ascii_9: UInt8 = Character("9").asciiValue!
        for char in s {
            if (char.asciiValue! >= ascii_a && char.asciiValue! <=      ascii_z ) || (char.asciiValue! >= ascii_A && char.asciiValue! <= ascii_Z ) || (char.asciiValue! >= ascii_0 && char.asciiValue! <= ascii_9 ){
                charsArray.append(String(char).lowercased())
            }   
        }
    
        return charsArray == charsArray.reversed()
    }
}
