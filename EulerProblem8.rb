
print 'Input 1000-digit number: '

n = gets.chomp.split("") # 1000 digit number (as string) => 1000 element array (WOW)

products = []

x = 0
while x < 986 do
	temp_array = n[x,13]
	temp_array.map! { | ele | ele.to_i }
	product = temp_array.inject(1, :*)
	products.push(product) if product != 0
	x += 1
end

puts "/////////////"
puts products.max
puts "/////////////"

#largest = products.sort.last
products.each do |product|
	puts "******************"
	puts product
	puts "***********"
end
#puts "Your answer is #{largest}"

# CORRECT
