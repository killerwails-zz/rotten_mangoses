class EpisodesController < ApplicationController
  
  def index
    @episodes = Episode.all
  end

  def show
    @episodes = Episode.find(params[:id])
  end

  def new
    @episodes = Episode.new
  end

  def edit
    @episodes = Episode.find(params[:id])
  end

  def create
    @admin = Admin.new(admin_params)
    @episodes = Episode.new(episode_params)

      if @episode.save
        redirect_to episode_path
      else
        render :new
      end
  end

  def update
    @episode = Episode.find(params[:id])

      if @episode.update_attributes(episode_params)
        redirect_to episode_path(@episode)
      else
        render :edit
      end
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
    redirect_to episode_path
  end

  protected
  #need to add file column name
  def episode_params
    params.require(:episode).permit(:title, :description, :runtime_in_minutes, :poster_image_url, :release_date)
  end

  def admin_params
    params.require(:admin).permit(:avatar)
  end


end
