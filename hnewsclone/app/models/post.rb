require 'uri'

class Post < ActiveRecord::Base
	validates :title,
	presence: true

	validates :link,
	presence: true,
	url: true

  	belongs_to :user
  
end
