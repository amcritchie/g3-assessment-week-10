class GifsController < ApplicationController
  def index
    @gifs = Gif.order(:id)
  end

  def new
    @gifs = Gif.new
  end

  def create

    @gifs = Gif.new
    @gifs.name = params[:gifs][:name]
    @gifs.name = params[:gifs][:url]

    if @gifs.valid?
      if @gifs.save
        # flash[:success] = "Task List was created."
        redirect_to "/"
      else
        @gifs
        render :new
      end
    else
      # flash[:error] = "Your tasks list could not be created."
      render :new
    end
  end
end