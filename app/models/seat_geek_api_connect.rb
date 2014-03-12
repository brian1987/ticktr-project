# require 'seatgeek'
class SeatGeekApiConnect

  attr_accessor :events

  def initialize(postal_code)
    @postal_code = postal_code
  end

  # def valid?(postal_code)
  # postal_code.length != 5
  # end

  def get_events
    formatted_events = []
    until formatted_events.empty? == false
      @event_type = %w(sports concerts baseball theater soccer basketball band nba mlb mls nhl boxing monster_truck).sample
      @events = SeatGeek::Connection.events({:type => "#{@event_type}", :postal_code => @postal_code})
      @events["events"].each do |event|
        formatted_events << {:url => event["url"], :title => event["title"], :time => event["datetime_local"]}
      end
      # end
    end
    formatted_events
  end
#
end