class StudentGuardian < ApplicationRecord
  belongs_to :student
  belongs_to :guardian
end
