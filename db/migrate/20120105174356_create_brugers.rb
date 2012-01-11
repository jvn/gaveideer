class CreateBrugers < ActiveRecord::Migration
  def change
    create_table :brugers do |t|
      t.string :navn
      t.string :efternavn
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.timestamps
    end
  end
end
