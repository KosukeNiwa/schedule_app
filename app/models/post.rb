class Post < ApplicationRecord
    validates :title, {presence: true}
    validates :start, {presence: true}
    validates :end, {presence: true}

    validate :start_end_check
    validate :start_today_check

    def start_end_check
      if :end < :start
        errors.add(:end, "は開始日より後の日付を入力してください")
      end
      
    end

    def start_today_check
      if :start < Date.today
        errors.add(:start, "は本日以降の日付を入力してください")
      end
      
    end

end
