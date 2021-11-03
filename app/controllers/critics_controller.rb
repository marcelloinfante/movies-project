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
    begin
      movie = Movie.find_by(title: params['movie'])
      current_critic = Critic.find_by(author: params['author'], movie: movie)
      if !current_critic
        critic = Critic.create(
          author: params['author'],
          score: params['score'],
          avaliation: params['avaliation'],
          movie: movie
        )
        render json: critic
      else
        render plain: "Critic already exist"
      end
    rescue
      render plain: "Movie don't exist"
    end
  end

  def update
    begin
      movie = Movie.find_by(title: params['movie'])
      puts movie
      critic = Critic.find_by(author: params['author'], movie: movie)
      puts critic
      critic.update_attributes(critic_params)
      render json: critic
    rescue
      render plain: "Critic don't exist"
    end
  end

  def delete
    begin
      movie = Movie.find_by(title: params['movie'])
      critic = Critic.find_by(author: params['author'], movie: movie)
      critic.destroy
      render json: critic
    rescue
      render plain: "Critic don't exist"
    end
  end

  private

  def critic_params
    params.permit(:author, :score, :avaliation)
  end
end
