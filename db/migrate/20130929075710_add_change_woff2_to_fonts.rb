class AddChangeWoff2ToFonts < ActiveRecord::Migration
  def change
  	change_column :fonts, :woff2, :boolean, :default => true
  end
end
