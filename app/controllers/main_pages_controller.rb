class MainPagesController < ApplicationController
  skip_before_action :protect_pages, only: [:index]
  def index
    @attendance = Attendance.new
    @home = true
  end
end
