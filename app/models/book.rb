class Book < ApplicationRecord

    validates :name, presence: true, uniqueness: true
    validates :quantity, presence: true

    belongs_to :library

    has_many :bookings
    has_many :users, through: :bookings

    def remaining_quantity
        (quantity - bookings.where('returned = false').count)
    end
end
