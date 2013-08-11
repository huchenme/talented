# == Schema Information
#
# Table name: employers
#
#  id           :integer          not null, primary key
#  company_name :string(255)
#  website      :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Employer < ActiveRecord::Base
  attr_accessible :company_name, :website

  has_one :user, as: :profile, dependent: :destroy

  accepts_nested_attributes_for :user

  validates_presence_of :company_name
end
