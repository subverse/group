class Account < ActiveRecord::Base
  belongs_to :user
  has_one :group
  has_many :subjects
  has_many :groups, :through => :subjects
  
  attr_accessible :name, :user_id, :group_id
  
  validates :name, :presence => true,
                   :uniqueness => { :case_sensitive => false }
                      
  validates :user_id, :presence => true,
                      :uniqueness => true
                      
  def leader?
    not self.group.nil?
  end    
  
  def groups
    groups = Array.new
    self.subjects.each do |subject|
      groups.push(subject.group)
    end
    return groups
  end                 
  
end
 