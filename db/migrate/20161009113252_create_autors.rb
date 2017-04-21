class CreateAutors < ActiveRecord::Migration[5.0]
  def change
    create_table :autors do |t|
      t.text :a_id
      t.text :first_name, :null => false
      t.text :second_name, :null => false
      t.text :last_name 
      t.text :spin
      t.index :a_id, unique: true
      t.boolean :science_index
      t.index [:last_name, :first_name, :second_name]
      
      t.timestamps
    end
  end
end
