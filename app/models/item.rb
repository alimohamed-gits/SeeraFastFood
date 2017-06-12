class Item < ActiveRecord::Base
  belongs_to :category
  has_many :order_items
  has_many :orders, through: :order_items
  validates :price, numericality: { greater_than: 0}
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
