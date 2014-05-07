class UserMailer < ActionMailer::Base

  DEFAULT_EMAIL = "syafiklijtk04@gmail.com"

  def contact_us(name, email, phone, message)
    mail(:to => DEFAULT_EMAIL, :from => email, :subject => "PUSHJAW CONTACT-US PUSHMEDIC") do | format|
      format.text do
        render :text => "
            My name: #{name || email}
            phone: #{phone}

            #{message}"
      end
    end
  end

end
