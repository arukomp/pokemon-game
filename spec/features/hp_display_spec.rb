RSpec.feature "Hit Points Display", :type => :feature do
  scenario "Users HPs are displayed" do
    sign_in_and_play

    expect(page).to have_content "Nomi Hit Points: 60"
    expect(page).to have_content "Julie Hit Points: 60"
  end
end
