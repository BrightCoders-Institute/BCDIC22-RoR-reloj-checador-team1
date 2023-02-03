class AttendancesController < ApplicationController
  skip_before_action :protect_pages, only: [:create]
  def index
    @attendances = Attendance.all
    
    entrances = Attendance.where(direction: "Check-in").pluck(:created_at)
    checkouts = Attendance.where(direction: "Check-out").pluck(:created_at)
    
    @avgIn = "#{hourInOut(entrances)}:#{minuteInOut(entrances)}:#{secondInOut(entrances)}"
    @avgOut = "#{hourInOut(checkouts)}:#{minuteInOut(checkouts)}:#{secondInOut(checkouts)}"

    today = Time.now.strftime("%d %b %Y")
    @ausencia = Attendance.where(direction: "Check-in", created_at: > Time.now.beginning_of_month ).pluck(:employee_id)
    puts today
  end

  def hourInOut(inOuts)
    hour = []
    inOuts.each { |inOut| hour << inOut.strftime("%H").to_i}
    hours = (hour.reduce(:+).to_i / hour.size)
  end

  def minuteInOut(inOuts)
    minute = []
    inOuts.each { |inOut| minute << inOut.strftime("%M").to_i}
    minutes = (minute.reduce(:+).to_i / minute.size)
  end

  def secondInOut(inOuts)
    second = []
    inOuts.each { |inOut| second << inOut.strftime("%S").to_i}
    seconds = (second.reduce(:+).to_i / second.size)
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
