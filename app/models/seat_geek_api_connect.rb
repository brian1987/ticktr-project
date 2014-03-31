class SeatGeekApiConnect
# import datetime, dateutil.parser
  attr_accessor :events


  def initialize(postal_code)
    @postal_code = postal_code
  end

  def get_events
    formatted_events = []
    until formatted_events.empty? == false
      @event_type = %w(sports concerts baseball theater soccer basketball band nba mlb mls nhl boxing monster_truck).sample
      @events = SeatGeek::Connection.events({:type => "#{@event_type}", :postal_code => @postal_code})
      @events["events"].each do |event|
        @event_datetime = []
        @event_datetime << event["datetime_local"].to_date.strftime("%A %m/%d/%y") << event["datetime_local"].to_datetime.strftime("%l:%M %p")
        formatted_events << {:url => event["url"], :title => event["title"], :time => "#{@event_datetime.to_s.gsub!('"','').gsub!('[','').gsub!(']','').gsub!(',',' at')}"}
      end
    end
    formatted_events
  end
end

