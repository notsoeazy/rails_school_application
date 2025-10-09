class Guardian < ApplicationRecord
    has_many :student_guardians, dependent: :destroy
    has_many :students, through: :student_guardians, dependent: :destroy
end
