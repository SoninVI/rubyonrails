class Article < ActiveRecord::Base

  has_many :tags
  has_many :comments, dependent: :destroy
  has_one :additional_photo, dependent: :destroy


  validates :name, :url,  presence: true
  # validates :email, uniqueness: true
  # validates :name, length: {minimum: 5}
  # validates :name, presence: {message: "mast by"},length: {is:4}

end
