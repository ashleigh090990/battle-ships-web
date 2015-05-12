require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Registering' do
  	visit '/'
  	click_link 'New Game'
  	expect(page).to have_content "What is your name?"
  	fill_in('First Name', with: 'Alejandro')
  	find_button('Submit').click
  end

  scenario 'Player does not provide name' do

  end
end