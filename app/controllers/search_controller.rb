class SearchController < ApplicationController
  def index
    @element_nation = ["Water Tribes", "Earth Kingdom", "Fire Nation", "Air Nomads"]
    @nation = params[:nation]

    
    @last_airbender_data = LastAirbenderService.get_characters(affiliation: @nation.gsub('+', ' '))
    
    if @last_airbender_data.is_a?(Array)
      @total_people = @last_airbender_data.length
      @members = @last_airbender_data.first(25)
    end
  end
end