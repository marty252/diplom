class CitationsPublication < ApplicationRecord
	belongs_to :publication
	belongs_to :citation
end
