class ThankYouOnProjectSubmission < ActionMailer::Base
  default from: "People Design Studio"
  
  def sent_a_thank_you_message_and_welcome_email(website) 
	@people_name = website.people_name
	@send_email_to = website.people_email
	@project_name = website.website_name
	@project_description = website.website_description
	mail(to: @send_email_to, subject: "Hey #{@people_name}. It's Us - People Design Studio. Let's Start Working On Your Website ...", from: "hello.peopledesignstudio@gmail.com") do |typeOfFormat|
		typeOfFormat.html
		typeOfFormat.text
	end	
  end
end
