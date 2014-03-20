module Relationships
  module Base
    extend ActiveSupport::Concern
    included do
    
      has_many  :followed_by, as: :followed, class_name: "Relationship"
    
    end
  end
end