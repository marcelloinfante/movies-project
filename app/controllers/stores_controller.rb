class StoresController < ApplicationController
  def read
    stores = Store.all
    render json: {
      status:'Success',
      message: 'Stores loaded',
      data: stores
    }, status: :ok
  end
end
