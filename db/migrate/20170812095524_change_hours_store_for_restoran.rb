class ChangeHoursStoreForRestoran < ActiveRecord::Migration[5.1]
  def change
    add_column :restorans, :from_hour, :integer
    add_column :restorans, :from_minutes, :integer
    add_column :restorans, :to_hour, :integer
    add_column :restorans, :to_minutes, :integer
    remove_column :restorans, :minutes
  end
end
