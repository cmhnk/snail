# Defines Users in the system
class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  scope :siblings, ->(last_name) { where(last_name: last_name) }
end
