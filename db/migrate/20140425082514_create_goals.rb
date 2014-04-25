class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
		t.string :name, null: false, limit: 100
      t.timestamps
    end
	add_index :goals, :name
  end
end
