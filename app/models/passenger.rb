class Passenger < ApplicationRecord
  belongs_to :booking

  validates :name, :age, presence: true
end
