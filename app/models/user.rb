# Defines Users in the system
class User < ApplicationRecord
  belongs_to :address_book

  validates :first_name, presence: true
  validates :last_name, presence: true

  def self.upcoming_birthdays
    current_month = Date.today.month
    next_month = current_month + 1
    where('extract(month from birthdate) IN (?)', [current_month, next_month]).limit(10)
  end
end
