class ErrorsController < ActionController::Base
  def not_found
    render json: {error: 'Not found'}, status: 404
  end
  
  def exception
    render json: {error: 'Something unexpected happened.'}, status: 500
  end
  
end