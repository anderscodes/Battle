describe Battle, type: :feature do
  it 'should load requested string' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end
