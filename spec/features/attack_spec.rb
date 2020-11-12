feature 'confirms attacks' do
  scenario 'Player 1 gets confirmation of hit on player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Mel attacked Lucy!'
  end
end
