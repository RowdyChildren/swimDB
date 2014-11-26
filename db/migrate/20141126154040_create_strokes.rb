class CreateStrokes < ActiveRecord::Migration
  def change
    create_table :strokes do |t|
      t.string :name

      t.timestamps
    end
  end
end
