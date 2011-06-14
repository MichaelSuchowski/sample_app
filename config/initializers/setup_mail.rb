ActionMailer::Base.smtp_settings ={
	
	:address			=> "smtp.gmail.com",
	:port				=> 587,
	:domain				=> "gmail.com",
	:user_name			=> "mjssrg@gmail.com",
	:password			=> "greatlakes",
	:authentication		=> :plain,
	:enable_starttls_auto => true
}

