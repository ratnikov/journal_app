class Entry < ActiveRecord::Base

  belongs_to :journal

  validates :name, :body, :presence => true

end

# == Schema Information
#
# Table name: entries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  body       :text
#  journal_id :integer
#  owner_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

