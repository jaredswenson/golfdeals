class CoursesController < ApplicationController
  def index
  	if course_signed_in?
  		@course = current_course
  	end
  end

  def show
  end
end
