class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :fullname, null: false
      t.date :birth
      t.text :bio
      t.string :image
      t.timestamps null: false
    end
    add_index :directors, :fullname,    unique: true
  end
end
