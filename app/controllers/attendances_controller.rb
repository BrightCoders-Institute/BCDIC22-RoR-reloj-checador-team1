class AttendancesController < ApplicationController
  skip_before_action :protect_pages, only: [:create]
  def index
    @attendances = Attendance.all

    @avgIn = Attendance.group_by_hour(:created_at, format: "%-l %P").where(direction: "Check-in").count
    
    @avgOut = Attendance.group_by_hour(:created_at, format: "%-l %P").where(direction: "Check-out").count
    
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
