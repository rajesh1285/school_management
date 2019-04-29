class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable,
         :validatable,:confirmable,:trackable,:lockable

   after_create :send_mail

   def send_mail
    UserMailer.welcome_email(self).deliver_now
   end
end
