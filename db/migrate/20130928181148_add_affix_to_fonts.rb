class AddAffixToFonts < ActiveRecord::Migration
  def change
    add_column :fonts, :affix, :string
  end
end
