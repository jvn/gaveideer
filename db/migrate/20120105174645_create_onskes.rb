class CreateOnskes < ActiveRecord::Migration
  def change
    create_table :onskes do |t|
      t.string :onske
      t.integer :pris
      t.string :hjemmeside
      t.string :billede
      t.integer :begivenhed_id

      t.timestamps
    end
  end
end
