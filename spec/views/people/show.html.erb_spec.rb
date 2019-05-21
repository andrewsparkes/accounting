# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'people/show', type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
                                firstname: 'Firstname'
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Firstname/)
  end
end
