class CreateRelatedSites < ActiveRecord::Migration
  def change
    create_table :related_sites do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
