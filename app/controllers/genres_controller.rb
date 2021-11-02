class GenresController < ApplicationController
  def read
    genres = Genre.all
    render json: {
      status:'Success',
      message: 'Genres loaded',
      data: genres
    }, status: :ok
  end
end
