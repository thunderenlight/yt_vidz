class VideosController < ApplicationController
  def index
  	@videos = Video.order('created_at DESC ')
  end

  def new
  	@video = Video.new
  end

  def create
  	@video = Video.new(video_params)
  		if

  end
end
