# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password        :string
#  password_digest :string
#

class User < ActiveRecord::Base

  has_secure_password

  has_many :projects
  has_many :habits

  validates :email, uniqueness: true

  def as_json(options = {})
    super(options.merge({ except: [:password, :password_digest] }))
  end

end
