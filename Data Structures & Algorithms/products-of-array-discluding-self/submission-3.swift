class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let count = nums.count
        var prefix = Array(repeating: 0, count: count)
        var sufix = Array(repeating: 0, count: count)
        var result = Array(repeating: 0, count: count)

        prefix[0] = 1
        sufix[count-1] = 1

        for i in 1..<count{
            prefix[i] = prefix[i-1] * nums[i-1]
        }

        for i in stride(from: count-2, through: 0, by: -1){
            sufix[i] = sufix[i+1] * nums[i+1]
        }

        for i in 0..<count{
            result[i] = prefix[i] * sufix[i]
        }

        return result
    }
}
