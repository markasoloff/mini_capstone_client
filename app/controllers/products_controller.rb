class Client::ProductsController < ApplicationController
  def index
    response = HTTP.get("localhost:3000/api/products")
    @products = response.parse
    render 'index.html.erb'
  end
end

#THIS IS NOT NAMESPACED. I NEED TO MAKE A NEW CONTROLLER FOR THE CLIENT THAT IS NAMESPACED.