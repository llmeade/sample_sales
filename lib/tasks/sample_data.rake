namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
	Rake::Task['db:reset'].invoke
    User.create!(:name => "Tiffany Moon",
                 :email => "tiffany@tagsmoon.com",
                 :password => "foobar",
                 :password_confirmation => "foobar")
	
    News.create!(:title => "New category created!",
	             :date => "06/19/2011 14:20:00",
                 :article => "Category 'Short Fat Fashion' facilitates users to advertise Clothing & Accessories for female with height under 5'4(163 cm)")
				 
	Category.create!(:name => "vacation rentals")
    Category.create!(:name => "homes for sail") 
    Category.create!(:name => "homes for rent")	
	
	Category.find(1).ads(1).create!(:email => "foobar-5@sbcglobal.net",
			   :user_id => 1,
               :content => "4br fabulous fully furnished Belvedere Lagoon home short term rental.")
	Category.find(1).ads(2).create!(:email => "barfoo-6@sbcglobal.net",
			   :user_id => 2,
               :content => "2br beautiful & sunny apartment in Haight Ashbury with large deck & garden.")
	Category.find(2).ads(1).create!(:email => "foobar-3@yahoo.com",
			   :user_id => 1,
               :content => "3br resort lifestyle in the heart of Tiburon!.")
	Category.find(2).ads(2).create!(:email => "barfoo-4@google.com",
			   :user_id => 2,
               :content => "2br/2ba two level condo w/master suite & parking.")
	Category.find(3).ads(1).create!(:email => "foobar-1@yahoo.com",
			   :user_id => 1,
               :content => "$2500 large master badroom w/private bathrom & parking.")
	Category.find(3).ads(2).create!(:email => "barfoo-2@google.com",
			   :user_id => 2,
               :content => "$875 fernished room in upscale Victorian - 1 blk to UCLA.")
  end
end