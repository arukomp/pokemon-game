RSpec.feature "Attack player", :type => :feature do

  scenario 'attacking player two' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('You attacked Julie')
  end
end
