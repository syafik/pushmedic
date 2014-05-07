class HomeController < ApplicationController

  def index
  end

  def about
  end

  def product
    @products = Product.all
    @type = ProductType.all
  end

  def product_show
    @product = Product.find(params[:id])
    @random_product = Product.all.sample(10)
  end

  def contact
    @message = Message.new
  end

  def send_message
    name = params[:message][:name]
    phone = params[:message][:phone]
    email = params[:message][:email]
    message = params[:message][:body]
    if params[:message][:body].present?
      Message.create(params[:message])
      #UserMailer.contact_us(name, email, phone, message).deliver
      flash[:notice] = "your message has been sent, we will review and reply your message soon."
      redirect_to contact_path
    else

    end
  end

end
