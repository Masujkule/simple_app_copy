require 'rails_helper'
	
	describe Product do
		context "when the product has comments" do
    before do
  
  @product = Product.create!(name: "race bike")
  @user = User.create!(first_name: "Masuj",last_name: "Kule",email: "masuj@kule", password: "massuj" )
  
  @product.comments.create!(rating: 1, user: @user, body: "Poor")
  @product.comments.create!(rating: 3, user: @user, body: "Ok")
  @product.comments.create!(rating: 5, user: @user, body: "Superb!")


  end

  it "returns average rating of all coments" do

  expect(@product.average_rating).to eq (3)

end		

  it 'is not valid' do
   expect(Product.new(description: "Nice Bike")).not_to be_valid
  end

end
end
