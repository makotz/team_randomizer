names = "makoto, lyn, eric, alina, ryan, travis, angela, david, ethan, tong, paul, chris, torry, keenan, alex"
teamcount = 4

namesArray = names.split(", ").shuffle
teamlimit = namesArray.size/teamcount
p teamlimit

hash = {}
1.upto(teamcount) {|x|
  hash[x] = namesArray[0...teamlimit]
  namesArray.shift(teamlimit)
}
1.upto(namesArray.length) { |y|
  hash[y] << namesArray[y-1]
}
puts hash

# names = ["Lyn", "Makoto", "Ryan", "Chris", "Yat", "Kevin", "Tam", "Jacob", "Wilson"]
# @number = 2
#
# def randomizer(array)
#  new_arr = array.shuffle
#  hash = {}
#  i = 0
#  while i < new_arr.length
#      hash[i] = new_arr[i..(i+@number-1)]
#      i += @number
#  end
#  numbers = new_arr.length/@number
#
#  p hash
#  i = 1
#  hash.each do |x,y|
#    puts "team#{i} #{y}"
#    i+=1
#  end
# end
#
# randomizer(names)
