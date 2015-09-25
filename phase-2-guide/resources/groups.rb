students = []

member_count = (ARGV.shift || 4).to_i

students.shuffle.each_slice(member_count).each_with_index do |group, index|
  puts "#{index+1}. #{group.join(", ")}"
end
