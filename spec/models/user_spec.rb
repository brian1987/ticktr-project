require 'spec_helper'

describe "User" do
	let(:user){User.create(:email => "email@email.com")}

before do
	user
end

	describe "#email" do
		it "has an email" do
			expect(User.find_by(email: "email@email.com")).not_to be(nil)
		end
	end


end