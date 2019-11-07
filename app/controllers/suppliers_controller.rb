class SuppliersController < ApplicationController
	def index
    @sups = Supplier.all
	end
	def new
    @sup = Supplier.new
	end
	def create 
    @sup = Supplier.new(supplier_params)

    @sup.save
    redirect_to suppliers_path
	end
	private
	def supplier_params
    params.require(:supplier).permit(:name)
	end
end
