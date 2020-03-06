feature 'Attacking' do
  # 'attack Player 2' scenario omitted
  scenario 'attacking player 2' do
    sign_in_and_play
    click_link 'Attack Shrek' # play.erb for reference since
    # giving us the command to attack player 2. 
    expect(page).to have_content 'You have Attacked Shrek!'
# attack.erb for reference - This gives us our confirmation
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack Shrek'
    click_link 'OK'
    expect(page).not_to have_content 'Shrek: 100HP'
    expect(page).to have_content 'Shrek: 90HP'
  end
end


# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10