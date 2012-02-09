class Account < ActiveRecord::Base
  belongs_to :user
  has_one :group
  has_many :subjects
  
  attr_accessible :name, :user_id, :group_id
  
  validates :name, :presence => true,
                   :uniqueness => { :case_sensitive => false }
                      
  validates :user_id, :presence => true,
                      :uniqueness => true
end
 