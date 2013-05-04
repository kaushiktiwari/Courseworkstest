namespace :db do
	desc "Erase and fill database"
	task :populate => :environment do
		require 'populator'

		 [Course].each(&:delete_all)

		 Course.populate 23 do |category|
		 	cate


