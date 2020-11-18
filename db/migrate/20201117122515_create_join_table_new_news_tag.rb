class CreateJoinTableNewNewsTag < ActiveRecord::Migration
  def change
    create_join_table :news, :news_tags do |t|
      t.index [:news_id, :news_tag_id]
      t.index [:news_tag_id, :news_id]
    end
  end
end
