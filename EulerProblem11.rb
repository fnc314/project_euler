def fileReader()
  grid = Array.new()

  File.open('EulerProblem11.txt','r') do |file|
    while ( line = file.gets )
      row = line.split(" ")
      row.map! {|r| r.to_i}
      grid.push(row)
    end
  end

  return grid
end

# grid is an array (the array returned by fileReader() above)
# grid is 20 x 20 = 400 integers

# Create function that takes in `grid`, `r` (int), `c` (int), and `dir` (string representing direction "U","UR","R","DR","D","DL","L","UL") and calculates the required product => Returns value => function should be called `products.push(function(grid,r,c,dir))` within `four_term_products(grid)`

def function(grid,r,c,dir)
  '''
  grid = array of arrays >> 20 arrays, 20 elements each, 400 element grid
  r, c = integers representing row and column indecies 0 <= r,c < 20
  dir = string for direction on the grid to travel to gather terms for product
  '''
  first_term = grid[r][c]

  case dir

    when "U"
      return (first_term * grid[r-1][c] * grid[r-2][c] * grid[r-3][c])
    when "UR"
      return (first_term * grid[r-1][c+1] * grid[r-2][c+2] * grid[r-3][c+3])
    when "R"
      return (first_term * grid[r][c+1] * grid[r][c+2] * grid[r][c+3])
    when "DR"
      return (first_term * grid[r+1][c+1] * grid[r+2][c+2] * grid[r+3][c+3])
    when "D"
      return (first_term * grid[r+1][c] * grid[r+2][c] * grid[r+3][c])
    when "DL"
      return (first_term * grid[r+1][c-1] * grid[r+2][c-2] * grid[r+3][c-3])
    when "L"
      return (first_term * grid[r][c-1] * grid[r][c-2] * grid[r][c-3])
    when "UL"
      return (first_term * grid[r-1][c-1] * grid[r-2][c-1] * grid[r-3][c-1])
  end
end

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
        if c < 16 # The last 3 rows can only compute the RIGHT product until reaching c = 17, at which case nil is returned by grid[r][c+3]
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
