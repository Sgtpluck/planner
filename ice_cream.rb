puts "How many guests do you have?"
guest_num = gets.chomp.to_i
i = 1
flavor = Hash.new
name_hash = Hash.new

	while i <= guest_num 
		puts "Guest name:"
		name = gets.chomp
		puts "Favorite Flavor:"
		fave = gets.chomp
		flavor[name] = fave
			
			if name_hash.include?(fave)
				name_hash[fave].push(name)
			else
				name_hash[fave] = [name]
			end
		
		puts " -------"

		i += 1
	end

	puts "What kind of report would you like? Alphabetical by name, or by flavor?"
		report = gets.chomp
		if report == "name"  #Sorts alphabetically by name
			flavor.sort.each { |key,value| puts "#{key}'s favorite flavor is #{value}"} 
		elsif report == "flavor"
			name_hash.sort.each {|key,value| puts "#{key} is enjoyed by #{value.join(" and ")}!"}
		end
