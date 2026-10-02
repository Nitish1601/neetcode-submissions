class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count = [Int: Int]()
        for num in nums {
            count[num, default: 0] += 1
        }
    
        var freq = [[Int]](repeating: [], count: nums.count + 1)
    
        for (num, cnt) in count {
            freq[cnt].append(num)
        }
        
        var result = [Int]()
        let freqReversed = Array(freq.reversed())
        for i in 0..<freqReversed.count{
            for num in freqReversed[i]{
                result.append(num)
                if result.count == k{
                    return result
                }
            }
        }
        return result
    }
}