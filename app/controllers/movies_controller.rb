class MoviesController < ApplicationController
  protect_from_forgery
  def read
    movies = Movie.all
    render json: {
      status:'Success',
      message: 'Movies loaded',
      data: movies
    }, status: :ok
  end

  def create
    begin
      current_movie = Movie.find_by(title: params['title'])
      if !current_movie
        director = Director.find_by(id: params['director'])
        movie = Movie.create(
          title: params['title'],
          description: params['description'],
          duration: params['duration'],
          price: params['price'],
          director: director
        )
      else
        render plain: "Movie already exists"
      end
      render json: movie
    rescue
    end
  end

  def update
    begin
      movie = Movie.find_by(title: params['title'])
      movie.update_attributes(movie_params)
      render json: movie
    rescue
      render plain: "Movie don't exist"
    end
  end

  def delete
    begin
      movie = Movie.find_by(title: params['title'])
      movie.destroy
      render json: movie
    rescue
      render plain: "Title don't exist"
    end
  end

  private

  def movie_params
    params.permit(:title, :description, :duration, :price, :director)
  end
end
