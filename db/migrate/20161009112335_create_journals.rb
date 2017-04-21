class CreateJournals < ActiveRecord::Migration[5.0]
  def change
    create_table :journals do |t|
      t.text :name, :null => false
      t.text :jour_id
      #издательство:
      t.text :publishing_house
      t.text :city, :null => false
      t.integer :SI_place
      t.integer :SI_value
      t.integer :impact_factor2
      t.integer :impact_factor5
      
      t.index [:name, :publishing_house]
      t.timestamps
    end
  end
end
