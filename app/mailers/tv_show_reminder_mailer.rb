class TvShowReminderMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def reminder_email
    @user = User.find(params[:user_id])
    @tv_show = TvShow.find(params[:tv_show_id])
    mail(to: @user.email, subject: 'Reminder for for your favorite TV show!')
  end
end
