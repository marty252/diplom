class CreateStatistics < ActiveRecord::Migration[5.0]
  def change
    create_table :statistics do |t|
        t.integer :value0
        t.integer :value1
        t.integer :value2
		t.integer :value3
		t.integer :value4
		t.integer :value5
		t.float   :value6
		t.integer :value7
		t.integer :value8
		t.integer :value9
		t.integer :value10
		t.integer :value11
		t.integer :value12
		t.integer :value13
		t.integer :value14
		t.integer :value15
		t.integer :value16
		t.integer :value17
		t.integer :value18
		t.integer :value19
		t.integer :value20
		t.integer :value21
		t.integer :value22
		t.integer :value23
		t.integer :value24
		t.integer :value25
		t.integer :value26
		t.integer :value27
		t.float   :value28
		t.float   :value29
		t.integer :value30
		t.integer :value31
		t.integer :value32

		t.integer :stat5
		t.integer :stat7
		t.integer :stat15
		t.integer :stat16
		t.integer :stat18
		t.integer :stat19
		t.integer :stat20
		t.integer :stat21
		t.integer :stat22
		t.integer :stat23
		t.integer :stat24
		t.integer :stat25
		t.integer :stat26
		t.integer :stat27
		t.integer :stat30
		t.integer :stat31
		t.integer :stat32
		t.references :autor, index: true, foreign_key: true
		t.text :a_id

     
      t.timestamps
    end
    
  end
end
