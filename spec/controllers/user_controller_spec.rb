require 'rails_helper'

	describe UsersController, :type => :controller do

		before do
			@user = FactoryGirl.create(:user)
			
		  #@user = User.create!(email: "example1@pa.pl", password: "2345678")
		  #@user = User.create!(email: "example2@pa.pl", password: "1234567")
		end

		describe 'GET #show' do
			context "User is logged in" do
				before do
					sign_in @user			
				end

			it 'loads correct user details' do
				get :show, id: @user.id
				expect(response).to be_succes
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user
			end
		end
		
			context "User is not logged in" do
				it 'redirects user to login' do
				get :show, id: @user.id
				expect(response).to redirect_to(new_user_session_path)
			end
		end


	context "Another user cannot access the showpage of user" do
				before do
					sign_in @user2
	end
						
			it 'redirects user2 to login' do
			get :show, id: user2.id
			expect(response).to have_http_status(302)
			expect(response).to redirect_to(root_path)


		end
	end



	end
end
