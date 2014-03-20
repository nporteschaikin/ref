class User < ActiveRecord::Base
  
  include Assets::Base
  
  attr_accessible   :handle, :email, :password, 
                    :password_confirmation, :date_of_birth
                    
  has_secure_password

  has_many  :channels
  has_many  :questions
  has_many  :answers
  has_many  :comments
  has_many  :relationships # FIXME: may refactor to not be polymorphic.
  
  asset :avatar
  
  validates :handle, presence: true, uniqueness: { case_sensitive: false } # FIXME: More elaborate validation required
  validates :email, email: true, uniqueness: { case_sensitive: false }
  validates :password, confirmation: true, length: { minimum: 6 }, on: :create
  validates :password_confirmation, presence: true, on: :create
  
  before_save   { |user| user.email = email.downcase }
  before_save   :update_remember_token
  
  class << self
    
    def find_by_email_or_handle(email_or_handle)
      case email_or_handle
      when /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
        find_by_email(email_or_handle)
      else
        find_by_handle(email_or_handle)
      end
    end
    
    def from_facebook_oauth(facebook_oauth)
      # add facebook oauth stuffs
    end
    
  end
  
  private
      
    def update_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
