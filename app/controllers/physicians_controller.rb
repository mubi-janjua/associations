class PhysiciansController < ApplicationController
	def index
    @phys = Physician.all
	end
	def new 
    @phy = Physician.new
	end
	def create
    @phy = Physician.new(physician_params)

    @phy.save
    redirect_to physicians_path
	end
	private
	def physician_params
    params.require(:physician).permit(:name)
	end
end
