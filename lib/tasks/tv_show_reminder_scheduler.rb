namespace :tv_show_reminder_scheduler do
  desc "Send email to users for reminding their favorite shows near to begin."
  task :call => :environment do
    UsersFavoriteTvShow.find_in_batches do |batch|
      batch.each do |users_favorite_tv_show|
        users_favorite_tv_show.tv_show
      end
    end
  end
end

def reminderable?(tv_show)
  current_time = Time.now.strftime('%I:%M %p')
  
end