class FeatureMailer < ApplicationMailer
	default from: "Feature Request Website Form <noreply@danaspinola.com>"
	default subject: "Feature Request"

	def new_feature(feature)
	  @feature = feature

	  mail(to: "kelli@hsdesignhouse.com", subject: "Feature Request") do |format|
  	  format.html
  	  format.text
    end
	end
end
