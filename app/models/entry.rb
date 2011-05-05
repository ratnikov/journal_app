class Entry < ActiveRecord::Base

  belongs_to :journal
  belongs_to :owner

  validates :name, :body, :presence => true

end
