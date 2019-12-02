class Location < ApplicationRecord
    has_many :destinations
    has_many :users, through: :destinations
    has_many :location_items
    has_many :items, through: :location_items
end
