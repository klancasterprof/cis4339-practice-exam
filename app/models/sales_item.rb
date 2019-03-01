class SalesItem < ActiveRecord::Base

  belongs_to :category

  validates_presence_of :name, :price, :category_id

  def self.average_price
     SalesItem.average('price')
  end
end
