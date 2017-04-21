class AddStatisticToAutor < ActiveRecord::Migration[5.0]
  	def change
    add_reference :autors, :statistic, index: true, foreign_key: true
  end
  
end
