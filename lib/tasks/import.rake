require 'csv'

desc "Import course from csv file"
task :import => [:environment] do

  file = "db/course.csv"

  CSV.foreach(file, :headers => true) do |row|
    Course.create ({
      :call_number => row[0],
      :course_title => row[1],
      :start_time1 => row[2],
      :end_time1 => row[3],
      :meets_on_1 => row[4],
      :building_1 => row[5],
      :room_1 => row[6],
      :instructor_1_name => row[7],
    })
  end
end