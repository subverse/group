class Post < ActiveRecord::Base
  belongs_to :account
  belongs_to :group
  belongs_to :subject
  belongs_to :consultant
  belongs_to :rating
    
end
