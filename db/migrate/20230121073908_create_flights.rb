class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :from
      t.references :to

      t.timestamps
    end

    add_foreign_key :flights, :airports, column: :from_id, primary_key: :id
    add_foreign_key :flights, :airports, column: :to_id, primary_key: :id
  end
end
