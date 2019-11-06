class DepartmentsController < ApplicationController
	def index
    @deps = Department.all
	end
	def new
    @dep = Department.new
	end
	def create
    @dep = Department.new(dep_params)
    #puts params.inspect
    @dep.save!
    #puts @dep.new_record?
    redirect_to departments_path
	end
private
	def dep_params
	params.require(:department).permit(:name)	
	end
end
