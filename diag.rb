require 'debugger'

def diagonals(rows)
  debugger
  down_diag = [[0,0],[1,1],[2,2]]
  up_diag = [[0,2],[1,1],[2,0]]

  [down_diag, up_diag].map do |diag|
    diag.map { |x, y| rows[x][y] }
  end
end
