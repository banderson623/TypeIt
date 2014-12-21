class Document < ActiveRecord::Base
  has_many :authors
  has_many :users, :through => :authors

  def authors_names
    users.map(&:name).join(', ')
  end
end
