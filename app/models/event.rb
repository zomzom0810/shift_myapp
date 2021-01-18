class Event < ApplicationRecord
  belongs_to :user

  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :start_end_time_check



  def start_end_time_check
    errors.add(:end_time, 'は開始時刻より遅い時間を選択してください') if start_time > end_time
  end


  def start_end_time
    self.end_time&.strftime('%H:%M').to_i - self.start_time&.strftime('%H:%M').to_i
  end

  def start_end_min
    (self.end_time&.strftime('%M').to_i - self.start_time&.strftime('%M').to_i) / 60.to_f
  end

end

