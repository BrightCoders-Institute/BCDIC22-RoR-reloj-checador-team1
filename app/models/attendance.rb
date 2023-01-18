class Attendance < ApplicationRecord
  belongs_to :employee

  validate :employee_id_and_private_number_match
 
  def employee_id_and_private_number_match
    employee = Employee.find_by(id: employee_id, privateNumber: privateNumber)
    unless employee.present?
      errors.add(:base, "employee_id and privateNumber do not match")
    end
  end
end
