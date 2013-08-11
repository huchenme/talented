# == Schema Information
#
# Table name: developers
#
#  id         :integer          not null, primary key
#  relocate   :boolean
#  position   :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Developer do
  pending "add some examples to (or delete) #{__FILE__}"
end
