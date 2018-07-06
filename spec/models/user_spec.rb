require 'rails_helper'

describe 'User' do
  context 'scopes' do
    context '.siblings' do
      it 'returns users with the same last name' do
        result = User.siblings('Henk')
        expect(result.count).to eq 2
        expect(result.pluck(:first_name)).to include('Corinne', 'Jonathan')
      end
    end
  end
end
