def sign_in_and_play
  visit "/"

  fill_in :player_1_name, with: "Nomi"
  fill_in :player_2_name, with: "Julie"
  click_button "Submit"
end

def attack_and_switch
  click_button("Attack")
  click_button("Switch turns")
end
