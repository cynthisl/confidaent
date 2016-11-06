class User < ActiveRecord::Base
  has_many :strengths
  has_many :requests
  has_many :skills, :through => :strengths
  # has_many :wanted_skills, :through => :requests, :source => :skills

  has_one :meet_preference
  has_one :meet_time, :through => :meet_preference
  has_one :meet_over, :through => :meet_preference

  # has_many :connections
  def find_matches
    #findall users that have a strength that this user has a request for
    # Users.where
    matches = User.first.requests.map do |s|
      Skill.find(s.skill_id).users
    end
  end

end
