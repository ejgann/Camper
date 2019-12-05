class User < ApplicationRecord
    has_many :destinations
    has_many :locations, through: :destinations
    has_many :user_items
    has_many :items, through: :user_items
    validates :name, presence: true
    validates :name, uniqueness: true
end
