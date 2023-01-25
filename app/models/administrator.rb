class Administrator < ApplicationRecord
  validate :admin_id_and_private_number_match
  
  def admin_id_and_private_number_match
    administrator = Administrator.find_by(id: admin_id, privateNumber: privateNumber)
    unless administrator.present?
      errors.add(:base, "administrator_id and privateNumber do not match")
    end
  end
end
