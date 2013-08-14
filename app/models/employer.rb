# == Schema Information
#
# Table name: employers
#
#  id            :integer          not null, primary key
#  company_name  :string(255)
#  website       :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  other_contact :string(255)
#  location      :string(255)
#  description   :text
#  vision        :text
#  team_size_id  :integer
#

class Employer < ActiveRecord::Base
  attr_accessible :company_name, :website, :other_contact, :location, :business_type_ids,
              :description, :vision, :team_size_id

  has_one :user, as: :profile, dependent: :destroy
  has_and_belongs_to_many :business_types
  belongs_to :team_size
  has_many :jobs

  validates_presence_of :company_name, :business_types, :team_size, :location
end
