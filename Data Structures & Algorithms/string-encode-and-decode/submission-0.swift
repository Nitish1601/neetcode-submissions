class Solution {

    func encode(_ strs: [String]) -> String {
        var result: String = ""

        for str in strs{
            result += String(str.count)+"#"+str
        }
        return result
    }

    func decode(_ str: String) -> [String] {
        var result: [String] = []
        let strArr = Array(str)
        var i = 0

        while i < strArr.count{
            var j = i
            while strArr[j] != "#" {
                j += 1
            }

            let len = Int(String(strArr[i..<j]))!
            let start = j + 1
            let end = start + len

            result.append(String(strArr[start..<end]))
            
            i = end
        }
        return result
    }
}
