# Defines AddressBooks in the system, which are collections of users
class AddressBook < ApplicationRecord
  validates :category, :user_id, presence: true
  has_many :contacts
  belongs_to :user

  scope :belonging_to_user, ->(current_user) { where(user_id: current_user.id) }
end