class User < ActiveRecord::Base
  has_many :audios

  has_many :authors
  has_many :documents, :through => :authors
end
