class Event < ActiveRecord::Base
	validates :date, :organizer_email, :title, presence: true 
	# validates :organizer_email with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates :title, uniqueness:true


end
