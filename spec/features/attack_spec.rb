feature 'confirms attacks' do
  scenario 'Player 1 gets confirmation of hit on player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Ted attacked Ernie!'
  end

  scenario 'Player 1 attack on Player 2 reduces Player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button "Next"
    expect(page).to have_content 'Ernie: 50 HP'
  end
end
