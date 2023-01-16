class MainPagesController < ApplicationController
  def index
    @employee = Employee.new
  end
  def new
    @employee = Employee.new
  end
  def create
    @employee = Employee.new(title: "...", body: "...")
    
    if @employee.save
      redirect_to @employee
    else
      render :new, status: :unprocessable_entity
    end
  end
end
