class New < ActiveRecord::Base

  has_and_belongs_to_many :news_tags

end
