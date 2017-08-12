class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.datetime :from
      t.datetime :to
      t.belongs_to :table, foreign_key: true

      t.timestamps
    end
  end
end
