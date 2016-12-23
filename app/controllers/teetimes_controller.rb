class TeetimesController < ApplicationController

   def create
    @teetime = current_course.teetimes.new(teetime_params)
    if @teetime.save
        redirect_to root_path
    else
      render "new"
    end
   end

   def edit
    @teetime = current_course.teetimes.update_attributes(teetime_params)
        redirect_to root_path
   end

   def destroy
	    @teetime = Teetime.find(params[:id])
    	@teetime.destroy

	    redirect_to courses_home_path
	   end
	end

    private
	def teetime_params
	    params.require(:teetime).permit(:course_id, :cost, :starttime, :endtime, :holes)
	end
end



