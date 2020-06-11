class VideosController < ApplicationController
  def youtube
    @videos = Video.youtube(params[:search]) if params[:search]
    @search = params[:search]
    
    # respond_to do |format|
    #   format.js { render partial: 'videos/yt_videos' }
    # end
  end
  
  def spotify
    if !params[:search].nil? && params[:search] != ""
      @tracks = Video.spotify(params[:search]) unless params[:search].nil?
      @search = params[:search]
    else
      @search = 'No search criteria'
    end
  end
  
  private
    
end
