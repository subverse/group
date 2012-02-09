class Group < ActiveRecord::Base
  belongs_to :account
  has_many :subjects
  has_many :consultants
  has_many :posts
end
