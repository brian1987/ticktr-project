require 'spec_helper'

describe "User" do

	before {@user = User.create(:email => "email@email.com", :postal_code => "10004", :concerts => 0, :sports => 0)}

	it { expect(@user.email).to eq("email@email.com") }
	it { expect(@user.postal_code).to eq("10004") }

	describe "#like" do
		it "allows the user to like things" do
			# event_type = "concerts"
			@user.like("concert")
			expect(@user.concerts).to eq(1)
		end
	end

	describe "#dislike" do
		it "allows the user to dislike things" do
			event_type = "sports"
			expect(@user.sports).to eq(0)
		end
	end

end