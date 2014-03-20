class Book < ActiveRecord::Base
  
  attr_accessible :author, :description, :isbn, :title
  
  has_many  :answers
  
  # FIXME: validators and such
  
end
