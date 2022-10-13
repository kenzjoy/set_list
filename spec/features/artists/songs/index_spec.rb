# as a user
# when I visit an artist's songs index
# then I see the titles all of the artist's songs
# amd I see that each title is a link to the songs show page

require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before(:each) do
    @spice_girls = Artist.create!(name: 'Spice Girls')
    @life = @spice_girls.songs.create!(title: 'Spice Up Your Life', length: 456, play_count: 7895632)
    @wannabe = @spice_girls.songs.create!(title: 'Wannabe', length: 238, play_count: 9865234)
  end

  it 'shows all of the titles of the songs for the artist' do
    visit "/artists/#{@spice_girls.id}/songs"

    expect(page).to have_content(@life.title)
    expect(page).to have_content(@wannabe.title)
  end

  it 'links to each songs show page' do
    visit "/artists/#{@spice_girls.id}/songs"

    click_on @life.title

    expect(current_path).to eq("/songs/#{@life.id}")
  end

  it 'shows the average song length for the artist' do
    visit "/artists/#{@spice_girls.id}/songs"

    expect(page).to have_content("Average Song Length for Spice Girls: 347")
  end
end