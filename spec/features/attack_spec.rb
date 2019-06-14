feature "Attack player 2" do
  scenario "player 1 gets confirmation of attack" do
    sign_in_and_play     
    click_link("Attack")    
    expect(page).to have_content("Bob attacks Jim")
  end

  scenario "reduce player 2 hit points by 10" do
    sign_in_and_play    
    click_link("Attack") 
    expect(page).not_to have_content("Jim: 60HP")
    expect(page).to have_content("Jim: 50HP")
  end
end