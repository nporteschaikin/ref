module Assets
  class Avatar < Asset
    
    has_attached_file :attachment, styles: { 
      tiny: "35x35#", small: "50x50#", 
      medium: "75x75#", large: "150x150#" 
    }
    
    validates_attachment :attachment, content_type: {
      content_type: [
        "image/jpg", 
        "image/jpeg", 
        "image/png", 
        "image/gif"
      ]
    }
    
  end
end