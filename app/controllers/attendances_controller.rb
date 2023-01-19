class AttendancesController < ApplicationController
  def create
    @attendance = Attendance.new(attendance_params)

    redirect_to '/' if @attendance.save
    
  end

  private

  def attendance_params
    params.require(:attendance).permit(:direction, :employee_id, :privateNumber)
  end
end
