RSpec.feature "Switch turns", :type => :feature do

  scenario "It shows whose turn it is" do
    sign_in_and_play
    expect(page).to have_content "It is Nomi's turn"
  end

  scenario "It switches turns" do
    sign_in_and_play
    click_button('Attack')
    click_button('Switch turns')
    expect(page).to have_content("It is Julie's turn")
  end

end
