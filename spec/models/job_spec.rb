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

require 'spec_helper'

describe Job do
  pending "add some examples to (or delete) #{__FILE__}"
end
