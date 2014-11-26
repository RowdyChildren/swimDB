class CreateSwimmers < ActiveRecord::Migration
  def change
    create_table :swimmers do |t|
      t.string :name
      t.integer :age
      t.date :dob

      t.timestamps
    end
  end
end
