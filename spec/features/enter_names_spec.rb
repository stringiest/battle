feature 'Player registration' do
  scenario 'Submit names' do
    visit('/')
    fill_in :player1, with: "Mel"
    fill_in :player2, with: "Lucy"
    click_button "submit"
    expect(page).to have_content 'Mel vs. Lucy'
  end
end
