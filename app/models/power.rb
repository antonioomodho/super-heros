class Power < ApplicationRecord
    validates :description, presence: true, length:{minimum: 20}
    has_many :heropowers
    has_many :heros, through: :hero_powers
end
