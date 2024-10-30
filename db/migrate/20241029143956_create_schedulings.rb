class CreateSchedulings < ActiveRecord::Migration[7.2]
  def change
    create_table :schedulings do |t|
      t.date :date, null: false
      t.time :time, null: false
      t.references :customer, null: false, foreign_key: true
      t.references :barber, null: false, foreign_key: true

      t.timestamps
    end
  end
end
