class TeetimesController < ApplicationController

   def index
    @teetime = Teetime.where('endtime >= ?', Date.today).page(params[:page]).per().order(created_at: :desc)
   end 

   def create
    @teetime = current_course.teetimes.new(teetime_params)
    if @teetime.save
        redirect_to root_path
    else
      render "new"
    end
   end

   def edit
   	@teetime = Teetime.find(params[:id])
   end

   def destroy
	    @teetime = Teetime.find(params[:id])
    	@teetime.destroy

	    redirect_to courses_home_path
	end

	def update
	    @teetime = Teetime.find(params[:id])

	      if @teetime.update(teetime_params)
          redirect_to courses_home_path
        else
	        render 'edit'
	    end
	end

    private
	def teetime_params
	    params.require(:teetime).permit(:course_id, :cost, :starttime, :endtime, :holes)
	end
end



