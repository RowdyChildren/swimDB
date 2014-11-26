class CreateStimes < ActiveRecord::Migration
  def change
    create_table :stimes do |t|
      t.float :time
      t.integer :meet_id
      t.integer :swimmer_id
      t.integer :stroke_id

      t.timestamps
    end
  end
end
