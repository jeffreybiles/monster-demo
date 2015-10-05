class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :email

      t.timestamps
    end
  end
end
