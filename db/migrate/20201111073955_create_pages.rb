class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :url
      t.text :content
      t.string :title
      t.text :keywords
      t.text :disc
      t.text :text
      t.boolean :active

      t.timestamps null: false
    end
  end
end
