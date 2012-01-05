class CreateBegivenheds < ActiveRecord::Migration
  def change
    create_table :begivenheds do |t|
      t.string :begivenhed
      t.string :dato

      t.timestamps
    end
  end
end
