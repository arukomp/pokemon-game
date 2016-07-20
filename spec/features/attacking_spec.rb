require 'spec_helper'

feature "attacking players" do

  scenario "player 1 can attack player 2" do
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).to have_content "Player 2 was attacked and damaged for 10 HP."
  end

end
