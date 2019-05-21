# frozen_string_literal: true

# Migration to add people model
class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :firstname

      t.timestamps
    end
  end
end
