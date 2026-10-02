class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [[Int]: [String]] = [:]

        for str in strs{
            var count = Array(repeating: 0, count: 26)

            for c in str {
             let i = (c.asciiValue! - 97)
                count[Int(i)] += 1
                
            }

            result[count, default: []].append(str)
        }

        return Array(result.values)
    }
}
