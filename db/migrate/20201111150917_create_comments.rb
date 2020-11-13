class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :name
      t.text :email
      t.text :text
      t.string :article_idinteger

      t.timestamps null: false
    end
  end
end
