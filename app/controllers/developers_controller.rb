class DevelopersController < ApplicationController
	def index
    @developers = Developer.all
	end
	def new
		@developer = Developer.new
	end
	def create
	@developer = Developer.new(developer_params)

	@developer.save
	redirect_to developers_path
	end
	private
	def developer_params
    params.require(:developer).permit(:name, :team_id)
	end
end
