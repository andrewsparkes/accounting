# frozen_string_literal: true

FactoryBot.define do
  factory :account do
    name { 'MyString' }
    description { 'MyString' }
    sort_code { 'MyString' }
    account_number { 'MyString' }
  end
end
