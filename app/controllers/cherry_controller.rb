class CherryController < ApplicationController
  def index
    @products = Product.all

  end
  def product_detail
    @products = Product.find(params[:id])
  end
  def cart
    @products = Product.find(params[:id])
  end
  # def register
  #   name = params[:name]
  #   password = params[:password]
  #   number = User.where(name :name, password :password).count
  #   if number == 0
  #     window.alert("用户名或密码错误，请核实");
  #   else
  #     redirect_to(:controller => 'cherry', :action => 'index')
  #   end
  #   # @password = User.where(name :name).first.password
  #   # if password == @password
  #   #   redirect_to(:controller => 'cherry', :action => 'index')
  #   # else
  #   #   window.alert("用户名或密码错误，请核实");
  #   # end
  #   # @user=User.new
  #   # @user.name = name
  # end

end
