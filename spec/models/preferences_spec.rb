require 'spec_helper'

describe "Preference" do
	let(:preference){Preference.create(:email => "email@email.com")}

before do
	preference
end

	describe "#email" do
		it "accepts an email" do
			expect(Preference.find_by(email: "email@email.com")).not_to be(nil)
		end
	end

end