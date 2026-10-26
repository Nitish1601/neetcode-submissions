class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {

        for row in 0..<9{
            var set = Set<Character>()
            for i in 0..<9{
                let char = board[i][row]
                if char == "."{  continue }  
                if set.contains(char) { return false } 
                    set.insert(char)
                
            }
        }

        for col in 0..<9{
            var set = Set<Character>()
            for j in 0..<9{
                let char = board[col][j]
                if char == "."{ continue }
                if set.contains(char) { return false } 
                set.insert(char)
            }
        }

        for square in 0..<9{
            var set = Set<Character>()
            for i in 0..<3{
                for j in 0..<3{
                    let row = (square/3)*3+i
                    let col = (square%3)*3+j
                    let char = board[row][col]
                    if char == "."{ 
                        continue 
                    } else if set.contains(char) {
                        return false
                    } else {
                        set.insert(char)
                    }
                }
            }
        }
        return true
    }
}
