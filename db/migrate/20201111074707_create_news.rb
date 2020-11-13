class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :name
      t.text :url
      t.text :content
      t.text :title
      t.text :keywords
      t.text :disc
      t.boolean :active

      t.timestamps null: false
    end
  end
end
