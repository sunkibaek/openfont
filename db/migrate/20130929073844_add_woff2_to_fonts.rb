class AddWoff2ToFonts < ActiveRecord::Migration
  def change
    add_column :fonts, :woff2, :boolean
  end
end
