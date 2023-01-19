class AttendancesController < ApplicationController
  def create
    @attendance = Attendance.new(attendance_params)

    if @attendance.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:direction, :employee_id, :privateNumber)
  end
end
