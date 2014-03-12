require 'pry'
class User < ActiveRecord::Base
	# recommends :events
	# before_save :event
	has_many :events
	#sets default values of sports and concerts to 0

event_type = %w(concerts sports).sample
	def event
		# binding.pry
		self.event= Event.new
	end
	def like(event_type)
		if event_type == "concert"
			self.concerts += 1
		elsif event_type == "sports"
			self.sports += 1
		end
		self.save
	end

	def dislike(event_type)
		if event_type == "concert"
			self.concerts -= 1
		elsif event_type == "sports"
			self.sports -= 1
		end
		self.save
	end


end
