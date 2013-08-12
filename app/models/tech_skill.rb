# == Schema Information
#
# Table name: tech_skills
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TechSkill < ActiveRecord::Base
  attr_accessible :name
end
