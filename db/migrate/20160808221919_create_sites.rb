class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :url, null: false, index: true
      t.boolean :processed, null: false, default: false
      t.text :content

      t.timestamps
    end
  end
end
