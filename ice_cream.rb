puts "How many guests do you have?"
guest_num = gets.chomp.to_i
i = 1
flavor = Hash.new
name_hash = Hash.new

	while i <= guest_num 
		puts "Hey, what's your name?"
		name = gets.chomp
		puts "What's your favorite flavor? If you have more than one, please separate with a comma!"
		fave = gets.chomp.split(/\,/)
		flavor[name] = fave
		fave.each do |favr|	
			if name_hash.include?(favr)
				name_hash[favr].push(name)
			else
				name_hash[favr] = [name]
			end
		end
		
		puts " -------"

		i += 1
	end

	puts "What kind of report would you like? Alphabetical by name, or by flavor?"
		report = gets.chomp
		if report == "name"  #Sorts alphabetically by name
			flavor.sort.each { |key,value| puts "#{key}'s enjoys #{value.join(" and ")}"} 
		elsif report == "flavor"
			name_hash.sort.each {|key,value| puts "#{key} is enjoyed by #{value.join(" and ")}!"}
		end
