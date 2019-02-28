class RequestMailer < ApplicationMailer
	default from: "Speaking Engagement Request Website Form <noreply@danaspinola.com>"
	default subject: "Speaking Engagement Request"

	def new_request(request)
	  @request = request

	  mail(to: "elizabeth.gagen@fabrikstyle.com", subject: "Speaking Engagement Request") do |format|
  	  format.html
  	  format.text
    end
	end
end
