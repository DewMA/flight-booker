class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.decimal :age
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
