class CreateCitations < ActiveRecord::Migration[5.0]
  def change
    create_table :citations do |t|
      t.text :cit_id      

      t.timestamps
    end
  end
end
