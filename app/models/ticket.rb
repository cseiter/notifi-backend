class Ticket < ApplicationRecord
    has_one :device_id
    has_one :owner_id
    has_one :station_id
end
