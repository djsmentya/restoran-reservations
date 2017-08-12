class Reservation < ApplicationRecord
  belongs_to :table
  validates :table, :from, :to, presence: true

  validate :restoran_schedule
  validate :reservation_overlap


  delegate :restoran, to: :table


  private

  def reservation_overlap
    if table.reservations.where("(reservations.from, reservations.to) OVERLAPS (?, ?)", from, to).any?
      errors.add(:reservations, 'Reservation not available for this time.')
    end
  end

  def restoran_schedule
    restoran_from = from.change hour: restoran.from_hour, minutes: restoran.from_minutes
    restoran_to   = from.change hour: restoran.to_hour, minutes: restoran.to_minutes

    schedule = IceCube::Schedule.new(restoran_from, end_time: restoran_to)
    schedule.add_recurrence_rule IceCube::Rule.weekly.day(restoran.weeks.map(&:to_sym))
    unless schedule.occurring_between?(from, to)
      errors.add(:reservations, 'Reservation out of restoran schedule.')
    end
  end
end
