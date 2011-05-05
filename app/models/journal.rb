class Journal < ActiveRecord::Base

  belongs_to :owner
  has_many :entries
  
  validates :name, :presence => true

end
