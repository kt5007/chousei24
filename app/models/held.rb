class Held < ApplicationRecord
  
  validates :user_id, presence: true
  
  validates :event_name, presence: true
  validates :held_time, presence: true
  validates :address, presence: true
  validates :helder, presence: true
  validates :description, presence: true

  belongs_to :user
  has_many :participates
  has_many :participate_users, through: :participates, source: 'user'
  mount_uploader :image, ImageUploader
  
  REGISTRABLE_ATTRIBUTES = %i(
    name
    held_at(1i) held_at(2i) held_at(3i) held_at(4i) held_at(5i)
  )  
  
end
