class Asset < ActiveRecord::Base
  belongs_to :attached
  attr_accessible :attachment, :type
end
