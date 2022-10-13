require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before(:each) do
        @spice_girls = Artist.create!(name: 'Spice Girls')
        @life = @spice_girls.songs.create!(title: 'Spice Up Your Life', length: 456, play_count: 7895632)
        @wannabe = @spice_girls.songs.create!(title: 'Wannabe', length: 238, play_count: 9865234)
        @stop = @spice_girls.songs.create!(title: 'Stop', length: 1, play_count: 9865234)
      end
      
      it 'returns the average song length' do
        expect(@spice_girls.average_song_length.round(2)).to eq(231.67)
      end
    end
  end
end