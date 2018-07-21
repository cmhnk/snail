require 'rails_helper'

describe 'contacts page', :type => :request do
  xit 'displays all contacts' do
    get "/contacts"

    expect(response).to have_http_status(:ok)

    body = JSON.parse(response.body)
    expect(body['payload'].size).to eq Contact.count
  end
end