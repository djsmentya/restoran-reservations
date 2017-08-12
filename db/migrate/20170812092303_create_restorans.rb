class CreateRestorans < ActiveRecord::Migration[5.1]
  def change
    create_table :restorans do |t|
      t.string :name
      t.string :weeks
      t.string :hours,
      t.string :minutes

      t.timestamps
    end
  end
end
