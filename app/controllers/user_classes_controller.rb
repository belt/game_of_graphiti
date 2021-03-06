class UserClassesController < ApplicationController
  def index
    user_classes = UserClassResource.all(params)
    respond_with(user_classes)
  end

  def show
    user_class = UserClassResource.find(params)
    respond_with(user_class)
  end

  def create
    user_class = UserClassResource.build(params)

    if user_class.save
      render jsonapi: user_class, status: :created
    else
      render jsonapi_errors: user_class
    end
  end

  def update
    user_class = UserClassResource.find(params)

    if user_class.update
      render jsonapi: user_class
    else
      render jsonapi_errors: user_class
    end
  end

  def destroy
    user_class = UserClassResource.find(params)

    if user_class.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: user_class
    end
  end
end
