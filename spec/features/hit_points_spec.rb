feature 'Hit points' do
  scenario 'Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Taz: 60HP'
  end

  scenario 'player loses 10hp' do
    visit('/')
    sign_in_and_play
    #click_button 'Submit'
    click_button 'Attack'
    expect($game.player_2.hitpoint).to eq(50)
  end
end
