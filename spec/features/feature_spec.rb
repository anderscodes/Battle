feature Battle do

  let(:player_name_1) { 'Habin' }
  let(:player_name_2) { 'Anders' }
  let(:hitpoints) { 7 }

  context 'At the beginning' do
    scenario 'Should return name' do
      visit_index_add_names_and_submit(player_name_1, player_name_2)
      expect(page).to have_content('Player one is called Habin. Player two is called Anders.')
    end

    scenario 'Should return player 2 hit points' do
      visit_index_add_names_and_submit(player_name_1, player_name_2)
      expect(page).to have_content("Player two hit points: #{hitpoints}")
    end
  end
end
