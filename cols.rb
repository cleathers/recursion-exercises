require 'debugger'

def cols(rows)
  debugger
  cols = [[],[],[]]

  rows.each do |row|
    row.each_with_index do |mark, col_idx|
      cols[col_idx] << mark
    end
  end

  cols
end


rows = Array.new(3) { Array.new(3) }

p cols(rows)
