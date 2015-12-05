class Vehicle < ActiveRecord::Base
  belongs_to :driver
  has_many :orders
  def order_vehiculo
    brand + ' ' + category+ ' ' + color
  end
end

  