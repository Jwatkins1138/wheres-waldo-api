class AddFieldsToLevel < ActiveRecord::Migration[7.0]
  def change
    add_column :levels, :waldo_location, :integer, array: true, default: []
    add_column :levels, :wenda_location, :integer, array: true, default: []
    add_column :levels, :wizard_location, :integer, array: true, default: []
    add_column :levels, :woof_location, :integer, array: true, default: []
    add_column :levels, :odlaw_location, :integer, array: true, default: []
  end
end
