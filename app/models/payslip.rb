class Payslip < ApplicationRecord
  belongs_to :user
  before_save :check_leaves 
  
  def check_leaves
    days = (Current.user.leaves.where(:start_at => Date.new(Date.today.year, Time.now.month)..Date.new(Date.today.year, Time.now.month).end_of_month))
    if days.present?
      number_of_days =days.inject(0){|sum,obj| sum+obj.number}
      per_day =  self.amount / 22
      self.amount = self.amount - (per_day*number_of_days)

    end
  end
end
