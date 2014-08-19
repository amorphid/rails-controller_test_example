class MovieStarsController < ApplicationController
  def create
    movie_star_params = JSON.parse(params[:movie_star])
    @movie_star = MovieStar.new(movie_star_params)

    if @movie_star.save
      render :show, status: :created, location: @movie_star
    else
      render json: @movie_star.errors, status: :unprocessable_entity
    end
  end
end
