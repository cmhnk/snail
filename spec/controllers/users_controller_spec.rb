require 'rails_helper'

describe 'users page', :type => :request do
  it 'displays all users' do
    get "/users"

    expect(response).to have_http_status(:ok)

    body = JSON.parse(response.body)
    expect(body['payload'].size).to eq User.count
  end
end