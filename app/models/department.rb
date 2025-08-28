class Department < ApplicationRecord
    has_many :students, dependent: :destroy
    has_many :teachers, dependent: :destroy
end
