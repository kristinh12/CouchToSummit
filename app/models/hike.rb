class Hike < ApplicationRecord
  belongs_to :user
  belongs_to :trail

  def duration
    end_time-start_time
  end
end
