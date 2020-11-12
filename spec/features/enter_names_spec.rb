feature 'Player registration' do
  scenario 'Submit names' do
    sign_in_and_play
    expect(page).to have_content 'Mel vs. Lucy'
  end
end
