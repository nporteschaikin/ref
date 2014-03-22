class Asset < ActiveRecord::Base
  
  attr_accessible   :attachment
  
  has_attached_file :attachment
  
  belongs_to  :attached, polymorphic: true
  
  validates :attachment, presence: true
  validates :attached, presence: true
  validates :type, presence: true
  
  def url(size = :original)
    attachment.url(size)
  end
  
end
