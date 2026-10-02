class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        guard s.count == t.count else { return false }
        var dict1: [Character: Int] = [:]
        var dict2: [Character: Int] = [:]

        for char in s{
            if dict1[char] != nil{
                dict1[char]! += 1
            } else {
                dict1[char] = 1
            }
            
        }

        for char in t{
            if dict2[char] != nil{
                dict2[char]! += 1
            } else {
                dict2[char] = 1
            }
            
        }
        return dict1 == dict2
    }
}
