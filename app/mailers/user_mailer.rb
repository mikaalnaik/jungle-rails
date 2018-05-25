class UserMailer < ApplicationMailer

  default from: 'notifications@example.com'

 def welcome_email(user,order)
   @order = order
   @user = user
   @url  = 'http://example.com/login'
   mail(to: user.email, subject: 'Welcome to My Awesome Site')
 end
end
