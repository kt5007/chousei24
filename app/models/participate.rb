class Participate < ApplicationRecord
  validates :user_id, presence: true
  validates :held_id, presence: true
  belongs_to :user
  belongs_to :held
end
