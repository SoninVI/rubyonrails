class CreateAdditionalPhotos < ActiveRecord::Migration
  def change
    create_table :additional_photos do |t|
      t.string :image
      t.string :alt
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
