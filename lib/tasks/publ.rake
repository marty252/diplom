require 'CreatePubl'

namespace :elibrary do

task :publ => :environment do
	a_id = "136311"
	
	
		createPubl(a_id)

	end

end

