class SeatGeekApiConnect

  attr_accessor :events
  validates_format_of :postal_code,
   :with => /^\d{5}(-\d{4})?$/, 
   :message => "should be in the form 12345 or 12345-1234"

  def initialize(postal_code)
    @postal_code = postal_code
  end

  def get_events
    formatted_events = []
    until formatted_events.empty? == false
      @event_type = %w(sports concerts baseball theater soccer basketball band nba mlb mls nhl boxing monster_truck).sample
      @events = SeatGeek::Connection.events({:type => "#{@event_type}", :postal_code => @postal_code})
      @events["events"].each do |event|
        formatted_events << {:url => event["url"], :title => event["title"], :time => event["datetime_local"]}
      end
    end
    formatted_events
  end
end

