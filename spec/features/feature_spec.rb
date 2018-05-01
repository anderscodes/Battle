feature Battle do
  # before :each do
  #   Player1.make(name: 'Habin')
  #   Player2.make(name: 'Anders')
  # end

  scenario 'should return name' do
    visit ('/')
    # expect(page).to have_content('This is a form')
      fill_in 'name1', with: 'Habin'
      fill_in 'name2', with: 'Anders'
    click_button 'submit'
    expect(page).to have_content('Player one is called Habin. Player two is called Anders.')
  end
end
