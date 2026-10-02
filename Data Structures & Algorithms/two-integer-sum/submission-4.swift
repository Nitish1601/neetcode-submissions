class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
    for i in 0..<nums.count{
       dict[nums[i]] = i
    }
    
    for (i,num) in nums.enumerated(){
        let diff = target - num
        
        if let index = dict[diff], i != index{
            return [i,index]
        }
    }
    return []
    }
}
