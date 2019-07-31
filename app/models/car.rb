class Car < ApplicationRecord
    has_many :marcas
    has_many :models
    has_many :orders
    has_many :users, through: :orders
end
