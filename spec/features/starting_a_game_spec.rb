require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Starting a new game' do
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What's your name?"
  end

  scenario 'Gives you a form to fill in your name' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'James Cameron')
    click_button('submit')
    expect(page).to have_content "Hi, James Cameron, you're player 1"
  end
end