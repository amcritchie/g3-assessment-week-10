class GifsController < ApplicationController
  def index
    @gifs = Gif.order(:id)
  end

  def new
    @gifs = Gif.new
  end
end