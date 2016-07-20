RSpec.feature "Name Input Form", :type => :feature do
  scenario "Users enter their names" do
    visit "/"

    fill_in :player_1_name, with: "Nomi"
    fill_in :player_2_name, with: "Julie"
    click_button "Submit"

    expect(page).to have_content "Nomi vs. Julie"
  end
end
