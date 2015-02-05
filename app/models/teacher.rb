class Teacher < ActiveRecord::Base

  has_many :parents
  # has_secure_password
  # validates_confirmation_of :password_digest
end
