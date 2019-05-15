# frozen_string_literal: true

# Base class for all application controllers
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
