class Citation < ApplicationRecord
has_many :citations_publications
	has_many :publications, through: :citations_publications

end
