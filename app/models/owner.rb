class Owner < ActiveRecord::Base

  has_many :journals

  validates :name, :email, :presence => true

end

# == Schema Information
#
# Table name: owners
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  journal_id :integer
#  created_at :datetime
#  updated_at :datetime
#

