feature 'displays hit points' do
  scenario 'Player 1 can see player 2 hit points' do
    visit('/')
    fill_in :player1, with: "Mel"
    fill_in :player2, with: "Lucy"
    click_button "Submit"
    expect(page).to have_content 'Lucy: 60 HP'
  end
end
