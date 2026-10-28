class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result: Set<[Int]> = []
        let numsSorted = nums.sorted()
    
        for i in 0..<numsSorted.count{
            var l = 0
            var r = numsSorted.count - 1
            while l < r {
                if numsSorted[l] + numsSorted[r] + numsSorted[i] < 0 {
                    l += 1
                } else if numsSorted[l] + numsSorted[r] + numsSorted[i] > 0 {
                    r -= 1
                } else {
                    if i != l && i != r && l != r {
                        result.insert([numsSorted[i], numsSorted[l], numsSorted[r]].sorted())
                    }
                    l += 1
                    r -= 1
                }
            }
        }
        return Array(result)
    }
}
