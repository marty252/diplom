class Publication < ApplicationRecord
	has_many :autors_publications
	has_many :autors, through: :autors_publications
	has_many :citations_publications
	has_many :citations, through: :citations_publications
  belongs_to :journal
end
