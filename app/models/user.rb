class User < ApplicationRecord
    validates :name, presence: true
    
    VALID_EMAIL_REGEX = /\A[\w+-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { with: VALID_EMAIL_REGEX}
    
    VALID_PASS_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i
    validates :password, format: { with: VALID_PASS_REGEX }
    
    validates :password_confirmation, presence: true
    
    has_secure_password
    
    has_many :helds
    has_many :participates
    has_many :participate_helds, through: :participates, source: 'held'
    
end
