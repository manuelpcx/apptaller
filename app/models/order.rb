class Order < ApplicationRecord
  belongs_to :car
  belongs_to :user
  scope :cart, -> {where(payed: false)}

  
end
