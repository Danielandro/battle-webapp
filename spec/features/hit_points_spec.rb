feature "view hit points" do
  scenario "see player 2 hit points" do    
    sign_in_and_play
    expect(page).to have_content("Jim: 60 HP")
  end 
end
