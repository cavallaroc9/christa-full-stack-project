class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :weight
      t.integer :sets
      t.integer :reps
      t.string :notes

      t.timestamps
    end
  end
end
