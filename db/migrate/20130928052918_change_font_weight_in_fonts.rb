class ChangeFontWeightInFonts < ActiveRecord::Migration
  def change
  	change_column :fonts, :style, :string
  end
end
