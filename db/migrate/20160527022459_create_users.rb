class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :fullname, null: false
      t.string :nickname, null: false
      t.string :avatar
      t.string :role, default: 'user'
      t.timestamps null: false
    end
    add_index :users, :email,    unique: true
    add_index :users, :nickname, unique: true


    # Creation of admins accounts
    user = User.new email: 'valentinchaillou89@gmail.com', 
              password: '22hj4xCC', 
              password_confirmation: '22hj4xCC', 
              nickname: 'Froza',
              fullname: 'Valentin CHAILLOU',
              role: 'admin',
              avatar: 'users/41.png'
    if user.save
        puts user.nickname + ' was created'
    else
      puts 'error creating admin1'
    end
    user2 = User.new email: 'sandrinafranco0@gmail.com', 
              password: '22hj4xCC', 
              password_confirmation: '22hj4xCC', 
              nickname: 'Doubidette',
              fullname: 'Sandrina FRANCO',
              role: 'admin',
              avatar: 'users/11.png'
    if user2.save
        puts user2.nickname + ' was created'
    else
      puts 'error creating admin2'
    end
    user3 = User.new email: 'alexandre.cordoba1@gmail.com', 
              password: '22hj4xCC', 
              password_confirmation: '22hj4xCC', 
              nickname: 'Balex',
              fullname: 'Alexandre CORDOBA',
              role: 'admin'
    if user3.save
        puts user3.nickname + ' was created'
    else
      puts 'error creating admin3'
    end
  end
end
