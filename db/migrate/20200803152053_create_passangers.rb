class CreatePassangers < ActiveRecord::Migration[5.1]
  def change
    create_table :passangers do |t|
      t.string :name
      t.string :age

      t.timestamps
    end
  end
end
