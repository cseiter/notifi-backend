class Ticket < ApplicationRecord
    has_one :device, dependent: :destroy
    has_one :owner, dependent: :destroy
    has_one :station, dependent: :destroy
    has_one :status, dependent: :destroy
    has_many :tickets, dependent: :destroy
end
