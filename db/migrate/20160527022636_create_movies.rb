class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title_vf, null: false
      t.string :title_vo
      t.string :year
      t.string :duration
      t.string :quality
      t.string :language
      t.boolean :bw
      t.string :image
      t.text :synopsis
      t.timestamps null: false
    end
    add_index :movies, :title_vf,    unique: true
    add_index :movies, :title_vo,    unique: true
    create_table :actors_movies, id: false do |t|
      t.belongs_to :actor, index: true
      t.belongs_to :movie, index: true
    end
    create_table :directors_movies, id: false do |t|
      t.belongs_to :director, index: true
      t.belongs_to :movie, index: true
    end
    create_table :categories_movies, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :movie, index: true
    end
    create_table :movies_tags, id: false do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :tag, index: true
    end
    create_table :countries_movies, id: false do |t|
      t.belongs_to :country, index: true
      t.belongs_to :movie, index: true
    end
    create_table :movies_writers, id: false do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :writer, index: true
    end

  end
end
