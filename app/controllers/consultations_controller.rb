class ConsultationsController < ApplicationController

  def new
    @doctor = Doctor.find(params[:doctor_id])
    @consultation = Consultation.new
  end

  def create
    @doctor = Doctor.find(params[:doctor_id])
    @consultation = Consultation.new(consultation_params)
    @consultation.doctor = @doctor

    if @consultation.save

      redirect_to doctor_path(@doctor)
    else
      render "doctors/show"
    end

  end

  def destroy
    @consultation = Consultation.find(params[:id])
    @consultation.destroy

    redirect_to doctor_path(@consultation.doctor)
  end

  private

  def consultation_params
    params.require(:consultation).permit(:description, :patient_id)
  end

end
