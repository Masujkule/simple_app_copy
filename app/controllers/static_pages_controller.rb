class StaticPagesController < ApplicationController
  def landing_page
  	@products = Product.limit(5)
	end
  
  def team
  end

  def polvo_people
  end

  def news
  end

  def contact
  end

  def order_surfboard
  end

	def thank_you
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  UserMailer.contact_form(@email, @name, @message).deliver_now
	end

end


