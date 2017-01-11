class StaticPagesController < ApplicationController
  def landing_page
  	@featured_product = Product.third
	end
  
  def about
  end

  def contact
  end
end
