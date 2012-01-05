class CreateBrugers < ActiveRecord::Migration
  def change
    create_table :brugers do |t|
      t.string :navn

      t.timestamps
    end
  end
end
