class MainPagesController < ApplicationController
  def index
    @attendance = Attendance.new
  end
end
