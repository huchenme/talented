# == Schema Information
#
# Table name: developers
#
#  id              :integer          not null, primary key
#  relocate        :boolean
#  position        :string(255)
#  location        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company         :string(255)
#  work_permit_id  :integer
#  compensation_id :integer
#  availability_id :integer
#  goal            :text
#  linkedin        :string(255)
#  github          :string(255)
#

class Developer < ActiveRecord::Base
  attr_accessible :location, :position, :relocate, :company, :compensation_id, :team_size_ids,
              :business_type_ids, :position_type_ids, :tech_skill_ids, :work_permit_id, :availability_id,
              :goal, :linkedin, :github

  has_one :user, as: :profile, dependent: :destroy
  belongs_to :work_permit
  belongs_to :compensation
  belongs_to :availability
  has_and_belongs_to_many :team_sizes
  has_and_belongs_to_many :business_types
  has_and_belongs_to_many :position_types
  has_and_belongs_to_many :tech_skills

  validates_presence_of :location, :position, :relocate, :work_permit, :compensation,
              :team_sizes, :business_types, :position_types, :availability, :goal, :tech_skills
end
