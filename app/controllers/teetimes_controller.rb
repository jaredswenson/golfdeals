class TeetimesController < ApplicationController

	def create
    @teetime = current_course.teetimes.new(teetime_params)
    if @teetime.save
        redirect_to root_path
    else
      render "new"
    end
   end

    private
	def teetime_params
	    params.require(:teetime).permit(:course_id, :cost, :starttime, :endtime, :holes)
	end
end


