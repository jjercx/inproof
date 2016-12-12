class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :name
      t.integer :count
      t.integer :goal
      t.integer :exp
      t.integer :bronze
      t.integer :silver
      t.integer :gold
      t.references :user
    end
  end
end
