class Journal < ApplicationRecord
has_many :publications
has_and_belongs_to_many :autors
end
