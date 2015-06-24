require 'spec_helper'

feature 'Playing a game' do

  scenario 'adding a coordinate to place a ship' do
    visit '/new_board'
    fill_in('coordinate', with: 'A1')
    click_button('Submit')
  end

  scenario 'placing the ship' do
    visit '/new_board'
    select 'DESTROYER', from: 'ship'
    fill_in('coordinate', with:'A1')
    select 'Horizontal', from: 'direction'
    click_button('Submit')
    expect(page).to have_content "ABCDEFGHIJ
  ------------
 1|BBBB      |1
 2|          |2
 3|          |3
 4|          |4
 5|          |5
 6|          |6
 7|          |7
 8|          |8
 9|          |9
10|          |10
  ------------
   ABCDEFGHIJ"
  end
end
