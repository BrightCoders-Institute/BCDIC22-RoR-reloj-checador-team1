class Employee < ApplicationRecord
    belongs_to :store
    has_many :attendances

    scope :ordered_employees, -> { order(id: :asc)}
end
