class MainPagesController < ApplicationController
  def index
    @attendance = Attendance.new
    @home = true
  end
end
