class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:mecanico, :office]     
  has_many :cars, through: :orders  
  has_many :orders

  def self.created_by_day
    group_by_day(:created_at).count
  end
end
