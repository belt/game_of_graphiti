class ApplicationController < ActionController::API
  register_exception Graphiti::Errors::RecordNotFound, status: 404

  rescue_from Exception do |err|
    handle_exception(err)
  end

  include Graphiti::Rails::Responders

  def handle_exception(err)
    raise err unless Rails.env.production?

    Rails.logger.error { err }

    render json: { error: err.message.to_json }, status: :internal_server_error
  end
end
