namespace :import do
  desc "TODO"
  task movies: :environment do
  	require 'csv'    
    CSV.foreach('db/films.csv', headers: true) do |row|
      Movie.create!(row.to_hash)
      puts row.name
    end
  end

end
