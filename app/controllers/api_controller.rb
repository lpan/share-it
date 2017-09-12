class ApiController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private

  def not_found
    render json: {error: 'not_found'}, status: :not_found
  end
end
