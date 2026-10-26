class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var count = 0
        var numsSet = Set(nums)
        for num in numsSet {
            if !numsSet.contains(num-1){
                var len = 0
                var pre = num
                while numsSet.contains(pre){
                    len += 1
                    pre += 1
                }
                count = max(count, len)
            }
        }
        return count
    }
}
