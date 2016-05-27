class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :fullname, null: false
      t.date :birth
      t.text :bio
      t.string :image
      t.timestamps null: false
    end
    add_index :actors, :fullname,    unique: true
  end
end
