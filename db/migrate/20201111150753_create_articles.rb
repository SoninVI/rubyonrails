class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :name
      t.text :url
      t.text :text

      t.timestamps null: false
    end
  end
end
