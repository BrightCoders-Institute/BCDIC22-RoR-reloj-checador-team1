class Store < ApplicationRecord
    has_many :employees

    scope :ordered_stores, -> { order(id: :asc)}
end
