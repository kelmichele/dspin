class LinksController < ApplicationController
	def book1
		redirect_to('https://fabrikstyle.com/pages/love-what-you-do')
	end

	def book2
	  redirect_to('https://www.amazon.com/Love-What-You-Do-creating/dp/0578412810')
	end

	def insta
	  redirect_to('https://www.instagram.com/danaspinola/')
	end

	def fb
	  redirect_to('https://www.facebook.com/dana.spinola')
	end

	def asher
	  redirect_to('https://shopasher.com/pages/our-story')
	end

	def ff
	  redirect_to('http://freefabrik.org')
	end

	def fab
	  redirect_to('https://fabrikstyle.com')
	end
end
