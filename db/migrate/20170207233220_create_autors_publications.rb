class CreateAutorsPublications < ActiveRecord::Migration[5.0]
  def change
    create_table :autors_publications do |t|
    	t.integer :autor_id
      t.integer :publication_id
      t.text :publ_id
      t.timestamps
    end
  end
end
