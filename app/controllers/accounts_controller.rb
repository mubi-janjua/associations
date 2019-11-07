class AccountsController < ApplicationController
		def index
    @accs = Account.all
	end
	def new
    @acc = Account.new
	end
	def create 
    @acc = Account.new(account_params)

    @acc.save
    redirect_to accounts_path
	end
	private
	def account_params
    params.require(:account).permit(:number, :supplier_id)
	end
end
