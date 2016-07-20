RSpec.feature "Hit Points Display", :type => :feature do
  scenario "Users HPs are displayed" do
    visit "/"

    fill_in :player_1_name, with: "Nomi"
    fill_in :player_2_name, with: "Julie"
    click_button "Submit"

    expect(page).to have_content "Nomi Hit Points: 60"
    expect(page).to have_content "Julie Hit Points: 60"
  end
end
