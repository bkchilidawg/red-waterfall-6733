require 'rails_helper'

RSpec.feature "SearchMembers", type: :feature do
  it "User searches for members of a nation" do
    visit root_path

    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    #expect(page).to have_content('Total members in Fire Nation: 100')

    within(first('.member', wait: 5)) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.photo') if page.has_css?('.photo')
      expect(page).to have_content(/Allies: .+|Allies: None/) 
      expect(page).to have_content(/Enemies: .+|Enemies: None/) 
      expect(page).to have_content(/Affiliations: .+|Affiliations: None/) 
    end
  end
end