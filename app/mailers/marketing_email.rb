class MarketingEmail < ActionMailer::Base
  
  default from: "People Design Studio"
  
  def send_marketing_email(reach_out_to_customer)
	@to = reach_out_to_customer.to
	@subject = reach_out_to_customer.subject
	@body = reach_out_to_customer.email
	mail(to: @to, subject: @subject, from: "hello.peopledesignstudio@gmail.com") do |format|
		format.html
		format.text
	end	
  end
  
end
