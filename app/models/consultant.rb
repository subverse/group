class Consultant < ActiveRecord::Base
  belongs_to :group
  has_many :posts
end
