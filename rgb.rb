puts "RGB - Calc"
puts
puts "Enter the components of the color"
print "Red (0-255): "
# read the value of red and convert
r = gets.to_i
#
r = 0 if r < 0 || r > 255

print "Green (0-255): "
g = gets.to_i
g = 0 if g < 0 || g > 255

print "Blue (0-255): "
b = gets.to_i
b = 0 if b < 0 || b > 255

# Calc summary
color = r << 16 | g << 8 | b

puts "Summary:     #{color}"

# calculate hex
hexcolor = color.to_s(16)
# Plus 6 
while hexcolor.length < 6
 hexcolor = "0" + f
end
# Convert into capital letter
hexcolor.upcase!

puts "Hexadecimal:           ##{hexcolor}"

#
wr = (r + 25) / 51 * 51
wg = (g + 25) / 51 * 51
wb = (b + 25) / 51 * 51

webcolor = wr << 16 | wg << 8 | wb
hexwebcolor = webcolor.to_s(16)

while hexwebcolor.length < 6
 hexwebcolor = "0" + f
end
hexwebcolor.upcase!

puts "Next Webcolor:      ##{hexwebcolor}"
