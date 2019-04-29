class UserMailer < ApplicationMailer
  default from: 'rajesh.maropost@gmail.com'

   def welcome_email(user)
     @user = user
     # @url  = 'http://localhost:3000/users/login'
     mail(to: @user.email, subject: 'Welcome to My Awesome Site')
   end
end
