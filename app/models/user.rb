require 'pry'
class User < ActiveRecord::Base

#event_type = %w(concerts sports).sample

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
