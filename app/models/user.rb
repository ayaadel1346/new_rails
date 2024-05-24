class User < ApplicationRecord
    validates :name, presence: true
    validates :DOB, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone_number, presence: true
    validates :email, uniqueness: true
    validates :address, presence: true
  end
  