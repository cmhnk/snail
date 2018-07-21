# Defines Contacts in the system
class Contact < ApplicationRecord
  belongs_to :address_book

  validates :first_name, presence: true
  validates :last_name, presence: true

  # TODO: this method currently doesn't limit birthdays to only those in the future
  # need to add additional filtering, ex.
  # if month is current month, day is not less than current day
  def self.upcoming_birthdays
    current_month = Date.today.month
    next_month = current_month + 1
    where('extract(month from birthdate) IN (?)', [current_month, next_month]).limit(10)
  end

  def format_birthdate
    [birthdate.strftime("%B"), birthdate.day].join(' ')
  end
end
