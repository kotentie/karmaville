namespace :db do

   desc "populate count field with total karma points"
   task :populate => :environment do
     puts "creating karma points"
     User.all.each do |user|
       user.update_attribute(:count, user.total_karma)
       user.save(validate: false)
     end
   end

end
