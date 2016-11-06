class Connection < ActiveRecord::Base
  belongs_to :user_1
  belongs_to :user_2

  def meeting_suggestions

  end
end
