class Journal < ActiveRecord::Base

  belongs_to :owner
  has_many :entries
  
  validates :name, :presence => true

end

# == Schema Information
#
# Table name: journals
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  owner_id   :integer
#  entry_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

