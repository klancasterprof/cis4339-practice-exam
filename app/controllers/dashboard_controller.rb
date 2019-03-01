class DashboardController < ApplicationController


  def index
    @sales_item_count = SalesItem.count
    @sales_item_average_price = SalesItem.average_price
  end
end
