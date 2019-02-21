feature 'attack player2 and get confirmation' do
  scenario 'Player 1 attacks' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Anu attacked Taz'
  end
end

feature 'attack player 2, points decrease by 10' do
   scenario 'Player 1 attacks' do
    sign_in_and_play
    click_link 'Attack'
    #expect(page).not_to have_content 'Taz: 60HP'
    expect(page).to have_content 'Taz: 50HP'
  end
end



# feature 'attack player 2, points decrease by 10' do
#   scenario 'Player 1 attacks' do
#     sign_in_and_play
#     $player_2.hitpoints
#     click_link 'Attack'
#     expect($player_2.hitpoints).to eq (50)
#   end
# end
