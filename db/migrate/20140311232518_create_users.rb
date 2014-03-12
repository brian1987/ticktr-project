class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :zip_code
      t.integer :concerts
      t.integer :sports

      t.timestamps
    end
  end
end
