class Question < ActiveRecord::Base

  include Likes::Base

  attr_accessible :channel, :title, :body

  belongs_to  :user
  belongs_to  :channel
  has_many    :answers

  validates :user, presence: true
  validates :channel, presence: true
  validates :title, length: { minimum: 5, maximum: 250 }

end
