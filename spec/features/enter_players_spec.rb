require 'spec_helper'

feature "entering players form" do
  scenario "user enters his name" do
    visit '/'
    fill_in("player1", with: "player1")
    fill_in('player2', with: 'player2')
    click_button ('enter')
    expect(page).to have_text('player1 vs player2')
  end

  scenario "displaying player hit points" do
    visit '/'
    fill_in("player1", with: "player1")
    fill_in("player2", with: "player2")
    click_button("enter")
    expect(page).to have_content('player1 100 vs player2 100')
  end
end
