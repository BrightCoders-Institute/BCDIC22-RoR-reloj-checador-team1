class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
    @avgAttendances = Attendance.all.group(:direction).count
  end

  def create
    @attendance = Attendance.new(attendance_params)

    @attendance.save ? (redirect_to root_path, success: "Successful registration!") : (redirect_to root_path, danger: "ERROR: Sign up failed!")
  end

  private

  def attendance_params
    params.require(:attendance).permit(:direction, :employee_id, :privateNumber)
  end
end
