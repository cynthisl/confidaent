class User < ActiveRecord::Base
  has_many :strengths
  has_many :requests
  has_many :skills, :through => :strengths
  # has_many :wanted_skills, :through => :requests, :source => :skills

  has_one :meet_preference
  has_one :meet_time, :through => :meet_preference
  has_one :meet_over, :through => :meet_preference

  has_secure_password

  # has_many :connections

  def find_all_matches
    #Currently only finds users that have skills current user requests
    #SHOULD only return users with those skills that also have a requests that match current user's skill
      #At least prioritize them.
      #Then show what they should connect over.
    #Potentially: take into account career level, at this point just display.
    requests.map do |s|
      Skill.find(s.skill_id).users
    end
  end

  def find_local_matches

    matches = find_all_matches

    matches[0].collect do |match|
      if match.zip_code == zip_code
        return match
      end
    end
  end

end
