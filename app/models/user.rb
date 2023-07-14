class User < ApplicationRecord

    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: true

    has_many :bookings
    has_many :books, through: :bookings
end
