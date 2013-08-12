# == Schema Information
#
# Table name: compensations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Compensation < ActiveRecord::Base
  attr_accessible :name
end
