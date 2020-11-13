class Article < ActiveRecord::Base

  has_many :tags


  validates :name, :url,  presence: true
  # validates :email, uniqueness: true
  # validates :name, length: {minimum: 5}
  # validates :name, presence: {message: "mast by"},length: {is:4}

end
