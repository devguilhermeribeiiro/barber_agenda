class Scheduling < ApplicationRecord
  belongs_to :customer, dependent: :destroy
  belongs_to :barber, dependent: :destroy
end
