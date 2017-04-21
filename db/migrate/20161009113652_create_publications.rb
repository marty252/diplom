class CreatePublications < ActiveRecord::Migration[5.0]
  def up
    create_table :publications do |t|
      t.text :publ_id, :null => false
      t.text :name, :null => false
      t.text :organisation
      t.text :ptype
      t.references :journal, foreign_key: true
      t.integer :year
      t.index :publ_id, unique: true
      t.timestamps
      
    end
    
   
    
  end
  def down
  drop_table :publications
end
end
