require 'rails_helper'

RSpec.describe Table, type: :model do
  let(:restoran) { Restoran.create(name: 'Fankony', weeks: ['saturday', 'sunday', 'monday', 'thursday'], from_hour: 7, to_hour: 20) }
  let(:table) { Table.create(name: 'Table #1', restoran: restoran) }

  it 'create reservation within restoran sсhedule' do
   expect {
     table.reserve(name: 'John doue', from: Time.now.change(hour: 14), to: Time.now.change(hour: 15))
   }.to change(Reservation, :count).by 1
  end

  it 'do not create reservation when restoran sсhedule not mutched' do
   expect {
     table.reserve(name: 'John doue', from: Time.now.utc.change(hour: 20), to: Time.now.utc.change(hour: 23))
   }.not_to change(Reservation, :count)
  end

  it 'not reserve overlaping times' do
    expect {
      table.reserve(name: 'John doue', from: Time.now.change(hour: 14), to: Time.now.change(hour: 15))
      table.reserve(name: 'Luis', from: Time.now.change(hour: 14), to: Time.now.change(hour: 15))
    }.to change(Reservation, :count).by 1
  end

end
