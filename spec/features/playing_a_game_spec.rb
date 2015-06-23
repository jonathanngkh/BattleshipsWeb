require 'spec_helper'

feature 'Playing a game' do

  scenario 'adding a coordinate to place a ship' do
    visit '/new_board'
    fill_in('coordinate', with: 'C1')
    click_button('submit')
  end

end
