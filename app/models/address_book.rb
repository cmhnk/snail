# Defines AddressBooks in the system, which are collections of users
class AddressBook < ApplicationRecord
  has_many :contacts
  belongs_to :user

  scope :belonging_to_user, ->(current_user) { where(user_id: current_user.id) }
end