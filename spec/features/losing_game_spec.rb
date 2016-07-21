feature "Losing the game" do

  scenario "player2 hits zero HP and loses the game" do
    sign_in_and_play
    11.times do
      click_link "Attack"
      click_button "OK"
    end
    expect(page).to have_content "Bub has 0 HP"
    expect(page).to have_content "Bub has lost the game!"
  end

end
