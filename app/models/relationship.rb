class Relationship < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :followed, polymorphic: true
  
  validates :user, presence: true
  validates :followed, presence: true
  
end
