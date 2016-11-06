class MeetPreference < ActiveRecord::Base
  belongs_to :user
  has_many :meet_overs
  has_one :meet_time
end
