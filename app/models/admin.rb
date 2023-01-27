class Admin < ApplicationRecord
  validate :admin_id_and_private_number_match

  def admin_id_and_private_number_match
    admin = Admin.find_by(admin: admin, privateNumber: privateNumber)
    unless admin.present?
      errors.add(:base, "admin_id and privateNumber do not match")
    end
  end

end
