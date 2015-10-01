namespace :migrate do
  task :csv => :environment do
    require "open-uri"
    require "csv"

    csv_url = 'https://s3.amazonaws.com/opendoor-problems/listings.csv'

    # NOTE: We can try to apply bulk insert to make it more performant.
    CSV.new(open(csv_url), :headers => :first_row).each do |line|
      columns = %w(street status price bedrooms bathrooms sq_ft lat lng)
      puts "Processing row ID: #{line['id']}"
      Listing.create!(columns.each_with_object({}) { |column, hash| hash[column] = line[column] })
    end
  end
end

