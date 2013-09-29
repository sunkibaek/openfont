class CreateFontTypes < ActiveRecord::Migration
  def change
    create_table :font_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
