class DirectorsController < ApplicationController
  protect_from_forgery
  def read
    directors = Director.all
    render json: {
      status:'Success',
      message: 'Director loaded',
      data: directors
    }, status: :ok
  end

  def create
    director = Director.create(
      first_name: params['first_name'],
      last_name: params['last_name'],
      age: params['age']
    )
    render json: director
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
