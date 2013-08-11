# == Schema Information
#
# Table name: users
#
#  id                              :integer          not null, primary key
#  email                           :string(255)      not null
#  crypted_password                :string(255)
#  salt                            :string(255)
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  remember_me_token               :string(255)
#  remember_me_token_expires_at    :datetime
#  reset_password_token            :string(255)
#  reset_password_token_expires_at :datetime
#  reset_password_email_sent_at    :datetime
#  last_login_at                   :datetime
#  last_logout_at                  :datetime
#  last_activity_at                :datetime
#  last_login_from_ip_address      :string(255)
#  profile_id                      :integer
#  profile_type                    :string(255)
#  firstname                       :string(255)
#  lastname                        :string(255)
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!

  belongs_to :profile, polymorphic: true

  attr_accessible :email, :password, :password_confirmation, :firstname, :lastname

  validates :firstname, presence: true
  validates :password, confirmation: true, length: { minimum: 6 }, allow_blank: true
  validates_presence_of :password, :on => :create
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: VALID_EMAIL_REGEX}
end
