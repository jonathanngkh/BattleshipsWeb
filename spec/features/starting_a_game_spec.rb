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
    click_button('Submit')
    expect(page).to have_content "Hello James, you are the chosen one. Now, click the magic button to see your board upon which you will place your ships"
  end

  scenario 'Did not fill in name' do
    visit '/new_game'
    fill_in('name', with: '')
    click_button('Submit')
    expect(page).to have_content "Please enter your name"
  end

  scenario 'player can press new board button once they have entered a name' do
    visit '/new_game'
    fill_in('name', with: 'James')
    click_button('Submit')
    expect(page).to have_content "HUZZAH"
    click_link('HUZZAH')
  end

  scenario 'creates game with player and board upon HUZZAH' do
    visit '/new_game'
    fill_in('name', with: 'James')
    click_button('Submit')
    click_link('HUZZAH')
    expect(page).to have_content "ABCDEFGHIJ"
  end

end
