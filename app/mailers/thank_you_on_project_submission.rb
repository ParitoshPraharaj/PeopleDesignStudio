class ThankYouOnProjectSubmission < ActionMailer::Base
  default from: "hello.peopledesignstudio@gmail.com"
  
  def sent_a_thank_you_message_and_welcome_email(website) 
	@project_owner_name = website.people_name
	@send_email_to = website.people_email
	@project_name = website.website_name
	@project_description = website.website_description
	mail(to: @send_email_to, subject: "Hey#{@project_owner_name}, Let's Get Started, Roll In ...") do |typeOfFormat|
		typeOfFormat.html
		typeOfFormat.text
	end	
  end
end
