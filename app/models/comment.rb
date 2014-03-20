class Comment < ActiveRecord::Base

  include Likes::Base

  attr_accessible :body

  belongs_to :commented, polymorphic: true
  belongs_to :user

end
