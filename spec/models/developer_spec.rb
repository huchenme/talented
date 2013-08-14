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

require 'spec_helper'

describe Developer do
  pending "add some examples to (or delete) #{__FILE__}"
end
