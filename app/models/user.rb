class User < ActiveRecord::Base

  has_secure_password

  has_many :projects

  validates :email, uniqueness: true

  def as_json(options = {})
    super(options.merge({ except: [:password, :password_digest] }))
  end

end
