require 'spec_helper'

feature "Losing a game" do
  scenario "shows a 'Lose' message if a player reaches 0 HP" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(60)
    click_button "Attack"
    # 11.times { attack_and_switch }
    # expect(page).to have_content("Julie Hit Points: 0")
    expect(page).to have_content("Julie has lost the game!")
  end
end
