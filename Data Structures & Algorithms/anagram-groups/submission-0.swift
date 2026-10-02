class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [[String]] = []
    var dict: [String: [String]] = [:]
    for str in strs{
        let sorted = String(str.sorted())
        if dict[sorted] == nil{
            dict[sorted] = [str]
        } else {
            dict[sorted]!.append(str)
        }
    }
    
    for (key, values) in dict{
        result.append(values)
    }
    
    return result
    }
}
