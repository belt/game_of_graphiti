class EnrollmentsController < ApplicationController
  def index
    enrollments = EnrollmentResource.all(params)
    respond_with(enrollments)
  end

  def show
    enrollment = EnrollmentResource.find(params)
    respond_with(enrollment)
  end

  def create
    enrollment = EnrollmentResource.build(params)

    if enrollment.save
      render jsonapi: enrollment, status: :created
    else
      render jsonapi_errors: enrollment
    end
  end

  def update
    enrollment = EnrollmentResource.find(params)

    if enrollment.update
      render jsonapi: enrollment
    else
      render jsonapi_errors: enrollment
    end
  end

  def destroy
    enrollment = EnrollmentResource.find(params)

    if enrollment.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: enrollment
    end
  end
end
