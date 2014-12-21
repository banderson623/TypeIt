class Document < ActiveRecord::Base
  has_many :authors
  has_many :users, :through => :authors
end
