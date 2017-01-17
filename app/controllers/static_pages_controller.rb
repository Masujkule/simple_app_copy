class StaticPagesController < ApplicationController
  def landing_page
  	@products = Product.limit(4)
	end
  
  def about
  end

  def contact
  end
end

