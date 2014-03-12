# require 'seatgeek'
class SeatGeekApiConnect

  attr_accessor :sports, :events, :concerts

  def initialize(postal_code)
    @postal_code = postal_code
  end

  def get_sports
    #binding.pry
    formatted_sports_events = []
    @events = SeatGeek::Connection.events({:type => "sports", :postal_code => @postal_code})
    @events["events"].each do |event|
      formatted_sports_events << {:url => event["url"], :title => event["title"]}
    end
    formatted_sports_events
  end

  def get_concerts
    #binding.pry
    formatted_concerts_events = []
    @events = SeatGeek::Connection.events({:type => "concert", :postal_code => @postal_code})
    @events["events"].each do |event|
      formatted_concerts_events << {:url => event["url"], :title => event["title"]}
    end
    formatted_concerts_events
  end


end

# s = SeatGeekApiConnect.new(11215)
# puts s.get_concerts
# SeatGeek::Connection.events({:type => "sports"})
# SeatGeek::Connection.events({:type => "concert"})

# SeatGeek::Connection.events({:type => "baseball"})
# SeatGeek::Connection.events({:type => "theater"})
# SeatGeek::Connection.events({:type => "hockey"})
# SeatGeek::Connection.events({:type => "basketball"})
# SeatGeek::Connection.events({:type => "soccer"})
# h["events"].first["url"]
# h["events"].first["short_title"]

