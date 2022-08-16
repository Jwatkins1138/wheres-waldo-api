class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.string :player
      t.string :seconds
      t.references :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
