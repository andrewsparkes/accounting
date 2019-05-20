# frozen_string_literal: true

require 'rails_helper'
require './app/controllers/transactions_controller'

RSpec.describe TransactionsController, type: :controller do
  describe '#index' do
    it "should get index" do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end