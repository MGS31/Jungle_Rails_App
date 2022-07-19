class User < ApplicationRecord
  has_secure_password
  validates :password, length: {minimum: 3}
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true
  
  def self.authenticate_with_credentials(email, password)
    email.downcase!
    email.strip!
    @user = User.find_by_email(email)

    if @user && @user.authenticate(password)
      return @user
    else
      return nil
    end
  end
end
