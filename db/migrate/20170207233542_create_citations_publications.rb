class CreateCitationsPublications < ActiveRecord::Migration[5.0]
  def change
    create_table :citations_publications do |t|
      t.integer :citation_id
      t.integer :publication_id
      t.text :publ_id
      t.text :cit_id
      t.timestamps
    end
  end
end
