class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def edit
    @employee = Employee.find(params[:id])
  end
  
  def new
  end
end
