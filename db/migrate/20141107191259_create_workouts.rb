class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name, null: false
      t.text :description
    end

    add_index :workouts, :name, unique: true
  end
end
