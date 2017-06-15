class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item



  def total
    sum = 0
    sum = item.price * self.quantity
  end
end