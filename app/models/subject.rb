class Subject < ActiveRecord::Base
  belongs_to :account
  belongs_to :group
  has_many :posts
end
