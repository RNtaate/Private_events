class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :description
      t.integer :creator_id
      t.date :date
      t.timestamps
    end
    add_index :events, :creator_id
  end
end
