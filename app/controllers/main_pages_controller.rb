class MainPagesController < ApplicationController
  def index
    @attendance = Attendance.new
  end
  def new
    @attendance = Attendance.new
  end
  def create
    @attendance = Attendance.new

  end
end
