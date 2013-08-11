# == Schema Information
#
# Table name: developer_profiles
#
#  id         :integer          not null, primary key
#  relocate   :boolean
#  position   :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DeveloperProfile < ActiveRecord::Base
  attr_accessible :location, :position, :relocate
end
