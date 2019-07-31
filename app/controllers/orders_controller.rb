class OrdersController < ApplicationController
  def create
    c = Car.find(params[:car_id])
    o = Order.find_or_create_by(user: current_user, car: c, price: c.price, payed: false)

    if o.save
      redirect_to orders_path
    else
      redirect_to cars_path
    end
  end

  def clean
    @orders = Order.where(user: current_user, payed: false)
    @orders.destroy_all
    redirect_to orders_path, notice: 'El carro se ha vaciado.'
  end

  def index
    @orders = Order.cart
    
  end
end
