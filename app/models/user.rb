class User < ApplicationRecord
  has_secure_password 

  has_many :posts, dependent: :delete_all

  before_validation :strip_whitespace

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, :length => {:minimum => 4}
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, pass)
    email = email.downcase
    user = User.find_by_email(email)
    if user && user.authenticate(pass)
      user
    else
      nil
    end
  end 
  
  def strip_whitespace
    self.name&.strip!
    self.email&.strip!
  end
end
