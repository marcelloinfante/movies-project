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
    director = Director.find_by(id: params['director'])
    movie = Movie.create(
      title: params['title'],
      description: params['description'],
      duration: params['duration'],
      price: params['price'],
      director: director
    )
    render json: movie
  end

  def update
    movie = Movie.find_by(title: params['title'])
    movie.update_attributes(movie_params)
    render json: movie
  end

  def delete
    movie = Movie.find_by(title: params['title'])
    puts movie.destroy.errors.massage
  end

  private

  def movie_params
    params.permit(:title, :description, :duration, :price, :director)
  end
end
