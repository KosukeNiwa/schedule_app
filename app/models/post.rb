class Post < ApplicationRecord
    validates :title, {presence: true}
    validates :start_day, {presence: true}
    validates :end_day, {presence: true}

    validate :start_end_check
    validate :start_today_check

    def start_end_check
      if start_day.present? && end_day.present?
        if end_day < start_day
          errors.add(:end_day, "は開始日より後の日付を入力してください")
        end
      
      end
      
    end

    def start_today_check
      if start_day.present? && end_day.present?
        if start_day < Date.today
          errors.add(:start_day, "は本日以降の日付を入力してください")
        end

      end
      
    end

end
