class ArtistsController < ApplicationController
  protect_from_forgery
  def read
    artists = Artist.all
    render json: {
      status:'Success',
      message: 'Artists loaded',
      data: artists
    }, status: :ok
  end

  def create
    current_artist = Artist.find_by(last_name: params['last_name'])
    if !current_artist
      artist = Artist.create(
        first_name: params['first_name'],
        last_name: params['last_name'],
        age: params['age']
      )
      params.each do |key, value|
        if !(key === 'first_name' || key === 'last_name' || key === 'age' || key === 'controller'|| key === 'action')
          title = value
          movie = Movie.find_by(title: title)
          ArtistsMovie.create(movie_id: movie.id, artist_id: artist.id)
        end
      end
      render json: artist
    else
      render plain: "Artist already exist"
    end
  end

  def update
    begin
      artist = Artist.find_by(last_name: params['last_name'])
      artist.update_attributes(artist_params)
      render json: artist
    rescue
      render plain: "Artist don't exist"
    end
  end

  def delete
    begin
      artist = Artist.find_by(last_name: params['last_name'])
      artist.destroy
      render json: artist
    rescue
      render plain: "Artist don't exist"
    end
  end

  private

  def artist_params
    params.permit(:first_name, :last_name, :age)
  end
end
