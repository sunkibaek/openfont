class AddCopyrightToFonts < ActiveRecord::Migration
  def change
    add_column :fonts, :copyright, :text
  end
end
