class CreateFonts < ActiveRecord::Migration
  def change
    create_table :fonts do |t|
      t.string :name
      t.string :family_name
      t.boolean :eot, :default => true
      t.boolean :woff, :default => true
      t.boolean :ttf, :default => true
      t.boolean :svg, :default => true
      t.references :font_type, index: true

      t.timestamps
    end
  end
end
