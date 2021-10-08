class Device < ApplicationRecord
    #belongs_to :ticket
    has_many :tickets
end
