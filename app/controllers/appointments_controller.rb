class AppointmentsController < ApplicationController
	def index
    @aps = Appointment.all
	end
	def new
    @ap = Appointment.new
	end
	def create
    @ap = Appointment.new(appointment_params)

    @ap.save
    redirect_to appointments_path
	end
	private
	def appointment_params
    params.require(:appointment).permit(:physician_id ,:patient_id, :appointment_date)
	end

end
