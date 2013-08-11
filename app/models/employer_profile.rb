# == Schema Information
#
# Table name: employer_profiles
#
#  id           :integer          not null, primary key
#  company_name :string(255)
#  website      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class EmployerProfile < ActiveRecord::Base
  attr_accessible :company_name, :website
end
