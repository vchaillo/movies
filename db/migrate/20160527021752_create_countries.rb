class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
    create_table :actors_countries, id: false do |t|
      t.belongs_to :actor, index: true
      t.belongs_to :country, index: true
    end 
    create_table :countries_directors, id: false do |t|
      t.belongs_to :country, index: true
      t.belongs_to :director, index: true
    end
    create_table :countries_writers, id: false do |t|
      t.belongs_to :country, index: true
      t.belongs_to :writer, index: true
    end
    require 'csv'    
    CSV.foreach('db/countries.csv', headers: true) do |row|
      Country.create!(row.to_hash)
      puts row.to_hash
    end
  end
end
