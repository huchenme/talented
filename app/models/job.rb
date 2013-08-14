# == Schema Information
#
# Table name: jobs
#
#  id              :integer          not null, primary key
#  employer_id     :integer
#  title           :string(255)
#  description     :text
#  responsibility  :text
#  requirement     :text
#  compensation_id :integer
#  ideal_candidate :text
#  availability_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Job < ActiveRecord::Base
  belongs_to :employer
  belongs_to :compensation
  belongs_to :availability
  has_and_belongs_to_many :position_types
  has_and_belongs_to_many :tech_skills
  attr_accessible :description, :ideal_candidate, :requirement, :responsibility, :title, :position_type_ids, :tech_skill_ids,
              :employer_id, :compensation_id, :availability_id

  validates_presence_of :title, :tech_skills, :ideal_candidate, :position_types, :availability
end
