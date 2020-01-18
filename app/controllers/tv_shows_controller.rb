class TvShowsController < ApplicationController
  def index
    @tv_shows = TvShow.search(params[:keyword])
  end

  def make_favorite
    tv_show = TvShow.find(params[:id])
    tv_show.users_favorite_tv_shows.create!(user: current_user)
    redirect_to root_path
  end
end
