class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
    var allProducts: Int = 1
    
    var result: [Int] = []
    var zeroCount = nums.filter({$0 == 0}).count
    
    for num in nums{
        if num != 0{
            allProducts *= num
        }
    }
    
    if zeroCount > 1{
        result = Array(repeating: 0, count: nums.count)
    } else if zeroCount == 1{
        result = Array(repeating: 0, count: nums.count)
        let indexOfZero: Int = nums.firstIndex(of: 0)!
        result[indexOfZero] = allProducts
    } else {
        result = nums.map({allProducts/$0})
    }
    return result
}
}
