# == Schema Information
#
# Table name: position_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PositionType < ActiveRecord::Base
  attr_accessible :name
end
