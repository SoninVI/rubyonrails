class Article < ActiveRecord::Base
  validates :name, :url,  presence: true
  # validates :name, length: {minimum: 5}
  validates :name, presence: {message: "mast by"},length: {is:4}
end
