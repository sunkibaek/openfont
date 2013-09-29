class AddWeightToFonts < ActiveRecord::Migration
  def change
  	add_column :fonts, :style, :string
  	add_column :fonts, :weight, :integer
  end
end
