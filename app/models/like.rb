class Like < ApplicationRecord
    
    belongs_to :user
    belongs_to :photo
    
    # long form of this is belonds_to :photo, :class_name => "Photo", :foreign_key =>"user_id"
    # so, the belongs_to :photo piece can really be anything. This is assigning photo 
    
    validates :user_id, :uniqueness => { :scope => :photo_id }
    
end
