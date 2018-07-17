require 'rails_helper'

describe 'User' do
  context 'class methods' do
    describe '.upcoming_birthdays' do
      before do
        allow(Date).to receive(:today).and_return Date.new(2018, 06, 15)
      end

      it 'returns users with birthdays in current or next month' do
        result = User.upcoming_birthdays
        expect(result.count).to eq 3
        expect(result.pluck(:first_name)).to include('Jonathan', 'Moira', 'Mae')
      end
    end
  end
end
