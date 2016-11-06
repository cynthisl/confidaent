class Skill < ActiveRecord::Base
  has_many :strengths
  has_many :requests

  has_many :users, :through => :strength
  has_many :users, :through => :request
end
