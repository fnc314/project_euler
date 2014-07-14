def fileReader()
  grid = Array.new()

  File.open('EulerProblem11.txt','r') do |file|
    while ( line = file.gets)
      row = line.split(" ")
      row.map! {|r| r.to_i}
      grid.push(row)
    end
  end

  return grid
end

# puts "*" * 10
# print fileReader()
# puts "*" * 10

# grid is an array (the array returned by fileReader() above)
# grid is 20 x 20 = 400 integers

def four_term_products(grid)

  products = Array.new()

  r = 0 # r for row
  while r < 20 do
    c = 0 # c for column
    while c < 20 do

      if r < 17 #after here it's impossible to calculate downward products

        if c < 3
          # DOWN product
          products.push(grid[r][c] * grid[r+1][c] * grid[r+2][c] * grid[r+3][c])
          # DOWN-RIGHT product
          products.push(grid[r][c] * grid[r+1][c+1] * grid[r+2][c+2] * grid[r+3][c+3])
          # RIGHT product
          products.push(grid[r][c] * grid[r][c+1] * grid[r][c+2] * grid[r][c+3])
        elsif c > 16
          # LEFT product
          products.push(grid[r][c] * grid[r][c-1] * grid[r][c-2] * grid[r][c-3])
          # DOWN-LEFT product
          products.push(grid[r][c] * grid[r-1][c-1] * grid[r-2][c-2] * grid[r-3][c-3])
          # DOWN product
          products.push(grid[r][c] * grid[r+1][c] * grid[r+2][c] * grid[r+3][c])
        else
          # LEFT product
          products.push(grid[r][c] * grid[r][c-1] * grid[r][c-2] * grid[r][c-3])
          # DOWN-LEFT product
          products.push(grid[r][c] * grid[r-1][c-1] * grid[r-2][c-2] * grid[r-3][c-3])
          # DOWN product
          products.push(grid[r][c] * grid[r+1][c] * grid[r+2][c] * grid[r+3][c])
          # DOWN-RIGHT product
          products.push(grid[r][c] * grid[r+1][c+1] * grid[r+2][c+2] * grid[r+3][c+3])
          # RIGHT product
          products.push(grid[r][c] * grid[r][c+1] * grid[r][c+2] * grid[r][c+3])
        end

      else
        if c < 16 # The last 3 rows can only compute the RIGHT product until reaching c = 17, at which case nil is returned by grid[r][c]
          # RIGHT product
          products.push(grid[r][c] * grid[r][c+1] * grid[r][c+2] * grid[r][c+3])
        end
      end

      c += 1
    end
    r += 1
  end


  return products
end

def ep11

  grid = fileReader()

  return four_term_products(grid).max

end

puts "*" * 10
puts ep11
puts "*" * 10
