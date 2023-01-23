class RemoveAgeFieldFromPassenger < ActiveRecord::Migration[7.0]
  def change
    remove_column :passengers, :age
    add_column :passengers, :email, :string
  end
end
