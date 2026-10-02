class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var result: [Int] = []
        for i in nums{
          dict[i, default:0] += 1
        }
        var sortedInt = dict.sorted(by: {$0.value > $1.value})
        for i in 0..<k{
            result.append(sortedInt[i].key)
        }
        return result
    }
}
