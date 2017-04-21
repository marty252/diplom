require 'autorID'


namespace :elibrary do

task :autor => :environment do
	a_id = "491509"

		addAutorID(a_id)

end

end