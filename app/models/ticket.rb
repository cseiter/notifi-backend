class Ticket < ApplicationRecord
    has_one :device
    has_one :owner
    has_one :station
    has_one :status
    has_many :tickets
end
