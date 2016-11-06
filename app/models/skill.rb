class Skill < ActiveRecord::Base
  has_many :strengths
  has_many :requests

  has_many :users, :through => :strengths
  # has_many :users, :through => :requests
end
