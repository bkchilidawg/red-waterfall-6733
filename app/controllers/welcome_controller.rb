# app/controllers/welcome_controller.rb

class WelcomeController < ApplicationController
  def index
    @element_nation = ["Water Tribes", "Earth Kingdom", "Fire Nation", "Air Nomads"]
  end
end
