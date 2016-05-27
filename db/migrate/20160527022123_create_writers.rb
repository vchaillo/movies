class CreateWriters < ActiveRecord::Migration
  def change
    create_table :writers do |t|
      t.string :fullname, name: false
      t.date :birth
      t.text :bio
      t.string :image
      t.timestamps null: false
    end
    add_index :writers, :fullname,    unique: true
  end
end
