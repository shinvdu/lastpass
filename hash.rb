require 'digest/sha1'
require 'base64'
print 'Your password: '
password =  gets.chomp

# puts '|' << password << "|"
print 'Hash times(integer): '
count = gets.chomp.to_i
count =  121 if not count > 0
puts "hash times: #{count}" 

print 'Base64 times(integer): '
encode = gets.chomp.to_i
encode =  11 if not encode > 0
puts "Base64 times: #{encode}"

count.times{
	password = Digest::SHA1.hexdigest password
}

encode.times{
	password = Base64.strict_encode64 password
}

puts password
