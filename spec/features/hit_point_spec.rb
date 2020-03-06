feature "hit points" do 
  scenario 'Player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content '100'
  end
end