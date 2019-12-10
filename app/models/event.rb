class Event < ApplicationRecord
  
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :ivent_id, presence: true
  validates :date, presence: true
  validates :address, presence: true
  validates :helder, presence: true
  
  belongs_to :event
  
end
