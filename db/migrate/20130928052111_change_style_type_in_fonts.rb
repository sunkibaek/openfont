class ChangeStyleTypeInFonts < ActiveRecord::Migration
  def change
  	change_column :fonts, :style, :integer, :limit => 1
  end
end
