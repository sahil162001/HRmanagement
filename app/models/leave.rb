class Leave < ApplicationRecord
  belongs_to :user
  # after_save :calculate_weekdays
  # def calculate_weekdays
  #   count_weekday = {}
  #   (0..5).to_a.select{|t| count_weekday[t]=0 }
  #   Leave.all.each do |leave|
  #     start_date end_date = leave.start_at, leave.end_at
  #     result = ( start_date.to_date..end_date.to_date ).to_a.select { |k| count_weekday[k.wday]=count_weekday[k.wday]+1}
  #   end
  #   return count_weekday
  #   end
end
