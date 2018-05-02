feature Battle do

  let(:player_name_1) { 'Habin' }
  let(:player_name_2) { 'Anders' }
  let(:hitpoints) { 7 }
  let(:attack_value) { 3 }
  let(:game_set_up) { visit_index_add_names_and_submit(player_name_1, player_name_2) }

  context 'At the beginning' do
    scenario 'Should return name' do
      game_set_up
      expect(page).to have_content("Player one is called #{player_name_1}. Player two is called #{player_name_2}.")
    end

    scenario 'Should return player 2 hit points' do
      game_set_up
      expect(page).to have_content("Player two hit points: #{hitpoints}")
    end
  end

  context 'Player 1 attacks' do
    scenario 'Should reduce hit point of player 2' do
      game_set_up
      click_button('attack-player-2')
      save_and_open_page
      expect(page).to have_content("Player two hit points: #{hitpoints - attack_value}")
    end
  end

end
