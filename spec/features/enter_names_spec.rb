feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Peter vs. Shrek'
  end
end

feature "hit points" do 
  scenario 'Player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content '100'
  end
end

feature "attacking" do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_link 'Attack Shrek'
    expect(page).to have_content 'You have Attacked Shrek!'
  end
end

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them


# If all your files work when you test rackup or shotgun, then 
# you know that there’s something wrong with the spec file as 
# opposed to your actual Ruby code.