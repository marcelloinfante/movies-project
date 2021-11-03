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
    current_director = Director.find_by(last_name: params['last_name'])
    if !current_director
      director = Director.create(
        first_name: params['first_name'],
        last_name: params['last_name'],
        age: params['age']
      )
      render json: director
    else
      render plain: "Director already exist"
    end
  end

  def update
    begin
      director = Director.find_by(last_name: params['last_name'])
      director.update_attributes(director_params)
      render json: director
    rescue
      render plain: "Director don't exist"
    end
  end

  def delete
    begin
      director = Director.find_by(last_name: params['last_name'])
      director.destroy
      render json: director
    rescue
      render plain: "Director don't exist"
    end
  end

  private

  def director_params
    params.permit(:first_name, :last_name, :age)
  end
end
