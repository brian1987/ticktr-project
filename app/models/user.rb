require 'pry'
class User < ActiveRecord::Base

  validates_format_of :postal_code,
   :with => /\A\d{5}-\d{4}|\A\d{5}\z/, 
   :message => "...? WTF"

	# def like(event_type)
	# 	if event_type == "concert"
	# 		self.concerts += 1
	# 	elsif event_type == "sports"
	# 		self.sports += 1
	# 	end
	# 	self.save
	# end

	# def dislike(event_type)
	# 	if event_type == "concert"
	# 		self.concerts -= 1
	# 	elsif event_type == "sports"
	# 		self.sports -= 1
	# 	end
	# 	self.save
	# end


end
