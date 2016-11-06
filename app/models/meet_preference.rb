class MeetPreference < ActiveRecord::Base
  belongs_to :user
  has_one :meet_over
  has_one :meet_time
end
