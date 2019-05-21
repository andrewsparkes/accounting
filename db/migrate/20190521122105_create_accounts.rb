# frozen_string_literal: true

# Migration to add account model
class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :description
      t.string :sort_code, null: true
      t.string :account_number, null: true

      t.timestamps
    end
  end
end
