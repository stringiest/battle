
feature 'displays hit points' do
  scenario 'Player 1 can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Ernie: 60 HP'
  end
end
