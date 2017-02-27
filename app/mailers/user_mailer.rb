class UserMailer < ApplicationMailer

  default from: "masujkule@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'masujkule@gmail.com',
        :subject => "A new contact form message from #{name}")
  end


	def paid_success(user, product)
	  	
	@user = user
	@product = product
	@appname = "Polvosurfboards"
	mail(to: @user.email,
	    :subject => "Thank you for your order from #{@appname}")
	end
end
