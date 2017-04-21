require 'parser'



namespace :elibrary do

task :publ => :environment do
	a_id = ["136311", "32186"]
	
	for i in 0..a_id.size
		createPubl(a_id[i])
	end
	end
task :autor => :environment do
	a = 'jgjgfjgj'
	b = 'jjkol'

	c = Autor.new
	c.first_name = a
    c.second_name = b
    c.save
end
end
