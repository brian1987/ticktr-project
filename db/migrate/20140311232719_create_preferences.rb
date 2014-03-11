class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :email
      t.integer :sports
      t.integer :concert
      t.integer :baseball

      t.timestamps
    end
  end
end
