class ProductsController < ApplicationController
  def new
    @product = Product.new

  end
  def create
    require 'fileutils'
    FileUtils.cp params[:product][:file].path, File.join(Rails.root, "/app/assets/images/#{params[:product][:file].original_filename}")
    c = Product.new
    c.title = params[:product][:title]
    c.description = params[:product][:description]
    c.image_url = params[:product][:file].original_filename
    c.price = params[:product][:price]
    c.save
    redirect_to(:controller => 'products', :action => 'new' )
  end
end
