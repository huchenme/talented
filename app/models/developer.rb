# == Schema Information
#
# Table name: developers
#
#  id         :integer          not null, primary key
#  relocate   :boolean
#  position   :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Developer < ActiveRecord::Base
  attr_accessible :location, :position, :relocate

  has_one :user, as: :profile, dependent: :destroy

  validates_presence_of :location, :position
end
