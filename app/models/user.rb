class User < ActiveRecord::Base

  has_secure_password
  has_many :orders
  
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :phone, numericality: { gequal_to: 7 }
 
  
	def total_spent
		sum = 0.0
		orders.where(status: "completed").each do |order|
		  sum += order.total
		end
		sum
	end

end
