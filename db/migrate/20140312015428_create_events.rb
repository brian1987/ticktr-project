class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :url
      t.integer :postal_code
      t.string :type

      t.timestamps
    end
  end
end
