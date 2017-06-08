class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    @consultation = Consultation.new
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
     redirect_to root_path
    else
      render :new
    end
  end



  private

  def doctor_params
    params.require(:doctor).permit(:name)
  end

end
