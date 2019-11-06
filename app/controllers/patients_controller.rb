class PatientsController < ApplicationController
	def index
		@pats = Patient.all
	end
	def new
        @pat = Patient.new
	end
	def create
       @pat = Patient.new(patient_params)

       @pat.save
       redirect_to patients_path
	end
	private
	def patient_params
    params.require(:patient).permit(:name)
	end
end
