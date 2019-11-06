class EmpsController < ApplicationController
	def index
    @empps = Emp.all
	end
	def new
    @empp = Emp.new
	end
	def create 
    @empp = Emp.new(empp_params)

    @empp.save
    redirect_to emps_path
	end

	private 
	def empp_params
    params.require(:emp).permit(:name, :department_id)
	end
end
