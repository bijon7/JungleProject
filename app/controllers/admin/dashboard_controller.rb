class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"]
# Defines method to count number of products and categories through
# instance variables and passes to show.html.erb.
  def show
    @products=Product.count
    @categories=Category.count
  end
end
