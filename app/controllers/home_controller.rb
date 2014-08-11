class HomeController < ApplicationController
  def index
    @gifs = Gif.order(:id)
  end
end