class Event < ApplicationRecord
belongs_to :user
validates :start_date, presence: true
validates :end_date, presence: true
validates :start_time, presence: true
validates :end_time,  presence: true
validate :start_end_time_check
validate :start_end_date_check

def start_end_time_check
    errors.add(:end_time, "は開始時刻より遅い時間を選択してください") if self.start_time > self.end_time
end

def start_end_date_check
    errors.add(:end_date, "の入力が正しくありません") if self.end_date > self.start_date
end

end
