class RemoveSecondsFromScores < ActiveRecord::Migration[7.0]
  def change
    remove_column :scores, :seconds, :string
  end
end
