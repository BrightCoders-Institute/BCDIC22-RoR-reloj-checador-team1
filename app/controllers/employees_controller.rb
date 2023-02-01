class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[ show edit update destroy ]

  def index
    @employee = Employee.all.ordered_employees
  end

  def edit
    @employee = Employee.find(params[:id])
  end
  
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save 
      redirect_to employees_url(@employee), success: "Employee was successfully created."
    else
      redirect_to employees_url(@employee), danger: "ERROR: Something went wrong :(" 
    end
  end

  def update
    if @employee.update(employee_params)
      redirect_to employees_url(@employee), success: "Employee was successfully updated."
    else
      redirect_to employees_url(@employee), danger: "ERROR: Something went wrong :("
    end
  end
  

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:name, :email, :position, :privateNumber, :statusActive, :store_id)
  end
end
