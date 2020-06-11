class Video
  include HTTParty
  include RSpotify
  # include SoundCloud

  base_uri "https://www.googleapis.com/youtube/v3/search?part=snippet&key=#{ENV['YOUTUBE_ID']}&type=video&q="

  def self.youtube(video)
    get(base_uri + video)
  end

  def self.spotify(video)
    RSpotify.authenticate(ENV['SPOTIFY_ID'], ENV['SPOTIFY_SECRET'])
    RSpotify::Artist.search(video).first.top_tracks(:US)
  end
end