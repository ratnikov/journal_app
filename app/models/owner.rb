class Owner < ActiveRecord::Base

  has_many :journals

  validates :name, :email, :presence => true

end
