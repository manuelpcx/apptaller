class Car < ApplicationRecord
    has_many :marcas
    has_many :models
    has_many :orders
    has_many :users, through: :orders

    def self.created_by_day
        group_by_day(:created_at).count

    end
end
