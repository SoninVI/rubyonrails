class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :name
      t.text :url
      t.text :title
      t.text :keywords
      t.text :disc

      t.timestamps null: false
    end
  end
end
