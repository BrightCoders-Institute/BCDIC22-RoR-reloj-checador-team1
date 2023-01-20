class AttendancesController < ApplicationController
  def create
    @attendance = Attendance.new(attendance_params)

    if @attendance.save
      redirect_to '/', notice: "Successful registration!"
    else
      redirect_to '/', alert: "ERROR: Sign up failed!"
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:direction, :employee_id, :privateNumber)
  end
end
