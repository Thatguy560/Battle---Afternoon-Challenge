# Helper class
def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Peter'
  fill_in :player_2_name, with: 'Shrek'
  click_button 'Submit'
end

# Each time we call the sign_in_and_play method 
# we can then pass on this following information to 
# the spec file. From my understanding everytime we visit the 
# home page it will allow us to contionously add in player names.