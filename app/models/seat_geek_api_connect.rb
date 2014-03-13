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
        # d = dateutil.parser.parse(event["datetime_local"])
        # print d.strftime('%m/%d/%Y')
        formatted_events << {:url => event["url"], :title => event["title"], :time => event["datetime_local"]}
      end
    end
    formatted_events
  end
end

