feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Peter'
    fill_in :player_2_name, with: 'Shrek'
    click_button 'Submit'
    expect(page).to have_content 'Peter vs. Shrek'
  end
end

feature "hit points" do 
  scenario 'Player 2s hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Peter'
    fill_in :player_2_name, with: 'Shrek'
    click_button 'Submit'
    expect(page).to have_content '100'
  end
end


# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them


# If all your files work when you test rackup or shotgun, then 
# you know that there’s something wrong with the spec file as 
# opposed to your actual Ruby code.