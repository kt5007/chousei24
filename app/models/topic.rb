class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
end
