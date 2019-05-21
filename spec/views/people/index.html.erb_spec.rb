# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'people/index', type: :view do
  before(:each) do
    assign(:people, [
             Person.create!(
               firstname: 'Firstname'
             ),
             Person.create!(
               firstname: 'Firstname'
             )
           ])
  end

  it 'renders a list of people' do
    render
    assert_select 'tr>td', text: 'Firstname'.to_s, count: 2
  end
end
