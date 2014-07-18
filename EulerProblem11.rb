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

# grid is an array of arrays (returned by fileReader() above)
# grid is 20 x 20 = 400 integers

# Create function `multiplier(grid,r,c,dir)` that takes in `grid`, `r` (int), `c` (int), and `dir` (string representing direction "U","UR","R","DR","D","DL","L","UL") and calculates the required product => Returns value => function should be called `products.push(multiplier(grid,r,c,dir))` within `four_term_products(grid)`

def multiplier(grid,r,c,dir)
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
  num_rows = grid.length
  num_cols = grid[0].length
  # any element in `grid` should suffice >> assuming square grid


  r = 0 # r for row
  while r < num_rows do
    c = 0 # c for column
    while c < num_cols do

      if r < 17 # r = 0, 1, 2, 3, ..., 14, 15, 16

        if c < 3 # c = 0, 1, 2
          products.push(multiplier(grid,r,c,"D")) # DOWN product
          products.push(multiplier(grid,r,c,"DR")) # DOWN-RIGHT product
          products.push(multiplier(grid,r,c,"R")) # RIGHT product
        elsif c > 2 && c < 17
          products.push(multiplier(grid,r,c,"L")) # LEFT product
          products.push(multiplier(grid,r,c,"DL")) # DOWN-LEFT product
          products.push(multiplier(grid,r,c,"D")) # DOWN product
          products.push(multiplier(grid,r,c,"DR")) # DOWN-RIGHT product
          products.push(multiplier(grid,r,c,"R")) # Right product
        elsif c > 16
          products.push(multiplier(grid,r,c,"L")) # LEFT product
          products.push(multiplier(grid,r,c,"DL")) # DOWN-LEFT product
          products.push(multiplier(grid,r,c,"D")) # DOWN product
        end

      elsif r > 16 # r = 17, 18, 19 (only right products)

        if c

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
