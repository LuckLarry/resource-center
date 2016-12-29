# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  employee_number :string
#  name            :string
#  mobile          :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password validations: false
end
