class Autor < ApplicationRecord
has_many :autors_publications
has_many :publications, through: :autors_publications
has_one :statistic
end
