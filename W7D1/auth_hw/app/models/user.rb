class User < ApplicationRecord
  # Validate the presence of username and session_token
  validates :username, presence: true, uniqueness: true
  validates :session_token, presence: true, uniqueness: true
  #Validate the presence of password_digest and set the error message to 'Password can't be blank'
  validates :password_digest, presence: { message: 'Password can not be blank'}
  # Validate the length of password, and set allow_nil to true
  validates :password, length: {minimum: 6, allow_nil: true}
  # Make sure that ensure_session_token gets called before_validation
  before_validation :ensure_session_token

# Remember: you have to add an attr_reader for password for the validation to occur!
  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return nil if user.nil?
    user.is_password?(password) ? user : nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16) #This is a helper method I like to write that uses SecureRandom::urlsafe_base64 and returns a 16-digit pseudorandom string
  end

  def reset_session_token! # This method resets the user's session_token and saves the user
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  def ensure_session_token #This method makes sure that the user has a session_token set, setting one if none exists
    self.session_token ||= User.generate_session_token
  end

  def password=(password)
    # This method sets @password equal to the argument given so that the appropriate validation can happen
    # This method also encrypts the argument given and saves it as this user's password_digest
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

end
