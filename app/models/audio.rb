class Audio < ActiveRecord::Base
  belongs_to :user
  has_one :document
end
