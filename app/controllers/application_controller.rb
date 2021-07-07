class ApplicationController < ActionController::API
  register_exception Graphiti::Errors::RecordNotFound, status: 404

  rescue_from Exception do |e|
    handle_exception(e)
  end

  include Graphiti::Rails::Responders
end
