class CriticsController < ApplicationController
  protect_from_forgery
  def read
    critics = Critic.all
    render json: {
      status:'Success',
      message: 'Critic loaded',
      data: critics
    }, status: :ok
  end

  def create
    movie = Movie.find_by(id: params['movie'])
    critic = Critic.create(
      author: params['author'],
      score: params['score'],
      avaliation: params['avaliation'],
      movie: movie
    )
    render json: critic
  end

  def update
    director = Director.find_by(last_name: params['last_name'])
    director.update_attributes(director_params)
    render json: director
  end

  def delete
    director = Director.find_by(last_name: params['last_name'])
    puts "TESTE!!!!!"
    puts director
    director.destroy
  end

  private

  def director_params
    params.permit(:first_name, :last_name, :age)
  end
end
