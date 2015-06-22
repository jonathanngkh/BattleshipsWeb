require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Starting a new game' do
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "Please enter your name"
  end

  scenario 'Gives you a form to fill in your name' do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'James')
    click_button('submit')
    expect(page).to have_content "Hi James"
  end
end