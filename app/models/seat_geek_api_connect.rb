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

  def get_baseball
    #binding.pry
    formatted_baseball_events = []
    @events = SeatGeek::Connection.events({:type => "baseball", :postal_code => @postal_code})
    @events["events"].each do |event|
      formatted_baseball_events << {:url => event["url"], :title => event["title"]}
    end
    formatted_baseball_events
  end

  def get_theater
    #binding.pry
    formatted_theater_events = []
    @events = SeatGeek::Connection.events({:type => "theater", :postal_code => @postal_code})
    @events["events"].each do |event|
      formatted_theater_events << {:url => event["url"], :title => event["title"]}
    end
    formatted_theater_events
  end

   def get_soccer
    #binding.pry
    formatted_soccer_events = []
    @events = SeatGeek::Connection.events({:type => "soccer", :postal_code => @postal_code})
    @events["events"].each do |event|
      formatted_soccer_events << {:url => event["url"], :title => event["title"]}
    end
    formatted_soccer_events
  end

  def get_basketball
    #binding.pry
    formatted_basketball_events = []
    @events = SeatGeek::Connection.events({:type => "basketball", :postal_code => @postal_code})
    @events["events"].each do |event|
      formatted_basketball_events << {:url => event["url"], :title => event["title"]}
    end
    formatted_basketball_events
  end


end
# s = SeatGeekApiConnect.new(11215)
# puts s.get_theater



# SeatGeek::Connection.events({:type => "theater"})
# SeatGeek::Connection.events({:type => "hockey"})
# SeatGeek::Connection.events({:type => "basketball"})
# SeatGeek::Connection.events({:type => "soccer"})
# h["events"].first["url"]
# h["events"].first["short_title"]

