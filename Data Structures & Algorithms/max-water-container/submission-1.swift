class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        guard heights.count >= 2 else { return 0 }
        var l = 0
        var r = heights.count - 1
        var maxArea: Int = 0
    
        while l < r {
            let height = min(heights[l], heights[r])
            let width = r - l
            let area = height * width
            maxArea = max(area, maxArea)
            if heights[l] < heights[r] {
                l += 1
            } else if heights[l] > heights[r] {
                r -= 1
            } else {
                l += 1
                r -= 1
            }
        }
        return maxArea
    }
}
