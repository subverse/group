class Account < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  
  attr_accessible :name, :user_id, :group_id
  
  validates :name, :presence => true,
                   :uniqueness => { :case_sensitive => false }
                      
  validates :user_id, :presence => true,
                      :uniqueness => true
end
 