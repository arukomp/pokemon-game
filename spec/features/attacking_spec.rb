require 'spec_helper'

feature "attacking players" do

  scenario "player 1 can attack player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "player1 attacked player2"
  end

  scenario "reducing health" do
    sign_in_and_play
    click_link "Attack"
    click_link "OK"
    expect(page).to_not have_content "player2 100"
    expect(page).to have_content "player2 90"
  end

end
