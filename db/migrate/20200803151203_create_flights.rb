class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :number
      t.string :date
      t.string :time
      t.string :dep_city
      t.string :arr_city
      t.references :airline, foreign_key: true

      t.timestamps
    end
  end
end
