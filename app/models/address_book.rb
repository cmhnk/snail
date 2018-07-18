# Defines AddressBooks in the system, which are collections of users
class AddressBook < ApplicationRecord
  has_many :users

  scope :belonging_to_user, ->(name) { where(owner: name) }
end