# == Schema Information
#
# Table name: team_sizes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeamSize < ActiveRecord::Base
  attr_accessible :name
end
