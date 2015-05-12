require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Registering' do
  	visit '/'
  	click_link 'New Game'
  	expect(page).to have_content "What is your name?"
  	fill_in('Name', with: 'Alejandro')
  	find_button('Submit').click
  	expect(page).to have_content "You made it!"
  end

  # scenario 'Assign name if player does not provide name' do
  #   visit '/game'
  #   fill_in('Name', with: '')
  #   find_button('Submit').click
  #   expect(page).to have_content "You didn't provide a name!"
  # end
end