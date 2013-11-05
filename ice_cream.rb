puts "How many guests do you have?"
guest_num = gets.chomp.to_i
i = 1
flavor = Hash.new
name_hash = Hash.new

	while i <= guest_num 
		puts "Which guest?"
		name = gets.chomp
		puts "What's her favorite flavor? If she has more than one, please separate with a comma!"
		fave = gets.chomp.split(/\,/)
		flavor[name] = fave
		fave.each do |flvr|	
			if name_hash.include?(flvr)
				name_hash[flvr].push(name)
			else
				name_hash[flvr] = [name]
			end
		end
		
		puts " -----------------"

		i += 1
	end


	puts "What kind of report would you like? Alphabetical by (n)ame, or by (f)lavor? Or perhaps most (p)opular flavor??"
		report = gets.chomp.downcase
		if report == "n"  #Sorts alphabetically by name
			flavor.sort.each { |key,value| puts "#{key}'s enjoys #{value.join(" and ")}"} 
		elsif report == "f" #Sorts alphabetically by flavor name
			name_hash.sort.each {|key,value| puts "#{key} is enjoyed by #{value.join(" and ")}!"}
		elsif report == "p"
			name_hash.each.sort_by do |key,value| 
				value.length
				puts "#{key} is liked by #{value.length}"
			end
		end
