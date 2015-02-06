class SuggestionsController < ApplicationController

  def new
    @episode_id = Episode_id.find(params[:episode_id_id])
    @suggestion = @episode_id.suggestions.build
  end

  def create
    @episode_id = Episode_id.find(params[:episode_id_id])
    @suggestion = @episode_id.suggestions.build(suggestion_params)
    @suggestion.admin_id = current_admin.id

    if @suggestion.save
      redirect_to @episode_id, notice: "Suggestion created successfully :)"
    else
      render :new
    end
  end

  protected

  def suggestion_params
    params.require(:suggestion).permit(:text)
  end

end