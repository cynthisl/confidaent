class User < ActiveRecord::Base
  has_many :strengths
  has_many :requests
  has_many :skills, :through => :strengths
  has_many :wanted_skills, :through => :requests
end
