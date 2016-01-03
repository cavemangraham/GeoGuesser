require 'csv'

desc "Import cities from csv file"
task :import => [:environment] do

  CSV.foreach("/Users/owner/Desktop/code/GeoGuesser/db/100Cities.csv", "r:windows-1250") do |row|
    Location.create({
      :address => row[0],
    })
  end

end