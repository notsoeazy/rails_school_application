class Department < ApplicationRecord
    has_many :students, dependent: :destroy
    has_many :teachers, dependent: :destroy
    has_many :staffs, dependent: :destroy
end
