class Tag < ActiveRecord::Base

  belongs_to :article
  has_and_belongs_to_many :pages

end
