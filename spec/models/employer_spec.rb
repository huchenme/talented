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

require 'spec_helper'

describe Employer do
  pending "add some examples to (or delete) #{__FILE__}"
end
