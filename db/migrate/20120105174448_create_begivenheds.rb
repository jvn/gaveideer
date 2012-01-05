class CreateBegivenheds < ActiveRecord::Migration
  def change
    create_table :begivenheds do |t|
      t.string :begivenhed
      t.string :dato
      t.integer :bruger_id

      t.timestamps
    end
  end
end
