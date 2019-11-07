class HistoriesController < ApplicationController
	    def index
	    @histts = History.all
		end
		def new
	    @histt = History.new
		end
		def create
	    @histt = History.new(history_params)

	    @histt.save
	    redirect_to histories_path
	    end
	    private
	    def history_params
        params.require(:history).permit(:rank, :account_id)
	    end
end
