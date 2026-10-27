class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s)
        var left = 0
        var right = chars.count - 1

        while left < right{
            while left < right && !isAlphaNum(chars[left]){
                left += 1
            }
            while right > left && !isAlphaNum(chars[right]){
                right -= 1
            }
            if chars[left].lowercased() != chars[right].lowercased(){
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }

    func isAlphaNum(_ char: Character) -> Bool {
        return char.isLetter || char.isNumber
    }
}
