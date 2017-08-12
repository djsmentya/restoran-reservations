class Table < ApplicationRecord
  belongs_to :restoran
  has_many :reservations

  def reserve(params)
    reservations.create(params)
  end
end
