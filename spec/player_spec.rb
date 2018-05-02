require 'player'

describe Player do
  let(:name) { 'Bob' }
  let(:starting_hit_points) { 7 }
  let(:attack_value) { 3 }

  context 'On set-up' do
    it 'Returns the player name' do
      subject.set_name(name)
      expect(subject.name).to eq name
    end
    it 'Returns the player hit points' do
      expect(subject.hit_points).to eq starting_hit_points
    end
  end

  context 'Removing hit points' do
    it 'Loses hit points' do
      starting_hit_points = subject.hit_points

      subject.lose_hit_points(attack_value)
      expect(subject.hit_points).to eq starting_hit_points - attack_value
    end
  end
end
