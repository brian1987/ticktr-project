require 'spec_helper'

describe 'SeatGeekApiConnect' do 
  let(:connection){SeatGeekApiConnect.new(:postal_code => "10009")}

  before do 
    connection
  end

  # describe "#connection" do
  #   it "connects to the api" do
  #     pending
  #   end
  # end 

  describe "#get_sports" do
    it "should return a hash of sports event" do
      sports = connection.get_sports
      expect(sports).to include("events")
    end
  end

end
