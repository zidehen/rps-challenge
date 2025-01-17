require 'game'

describe Game do
  subject(:game) {described_class.new}

  context 'when player is declared the winner' do

    it 'shows player rock beats scissors' do
      expect(subject.result('Rock', 'Scissors')).to eq 'You Win!'
    end

    it 'shows player paper beats rock' do
      expect(subject.result('Paper', 'Rock')).to eq 'You Win!'
    end

    it 'shows player scissors beats paper' do
      expect(subject.result('Scissors', 'Paper')).to eq 'You Win!'
    end

  end

  context 'when game is a draw' do

    it 'shows both players choose rock' do
      expect(subject.result('Rock', 'Rock')).to eq "It's a Draw!"
    end
    it 'shows both players choose paper' do
      expect(subject.result('Paper', 'Paper')).to eq "It's a Draw!"
    end
    it 'shows both players choose scissors' do
      expect(subject.result('Scissors', 'Scissors')).to eq "It's a Draw!"
    end

  end

  context 'when computer is declared the winner' do

    it 'shows computer rock beats scissors' do
      expect(subject.result('Scissors', 'Rock')).to eq 'You Lose!'
    end

    it 'shows computer paper beats rock' do
      expect(subject.result('Rock', 'Paper')).to eq 'You Lose!'
    end

    it 'shows computer scissors beats paper' do
      expect(subject.result('Paper', 'Scissors')).to eq 'You Lose!'
    end
    
  end

end