class Photo < ApplicationRecord
    
    belongs_to :user
    has_many :comments
    has_many :likes
    
    has_many :fans, :through => :likes, :source => :user 
    
    validates :user_id, :presence => true
    # we don't actually have to do this becasue when we have a belongs_to and it will validate presece of foreign key 
    # if we won't want to make ti mandatory we say
    # belonds_to: ... , validtes => false 
    
end
