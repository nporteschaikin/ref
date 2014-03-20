class Channel < ActiveRecord::Base

  include Relationships::Base

  attr_accessible :description, :name, :title

  belongs_to  :user
  has_many    :questions

  validates :name, presence: true
  validates :title, length: { minimum: 5, maximum: 50 }
  validates :description, length: { minumum: 5, maximum: 140 }

  def to_param
    name
  end

end
