class CriticsController < ApplicationController
  def read
    critics = Critic.all
    render json: {
      status:'Success',
      message: 'Critics loaded',
      data: critics
    }, status: :ok
  end
end
