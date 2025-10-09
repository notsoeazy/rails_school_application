class Student < ApplicationRecord
  belongs_to :department
  has_many :classlists, dependent: :destroy
  has_many :sections, through: :classlists , dependent: :destroy
  has_many :student_guardians, dependent: :destroy
  has_many :guardians, through: :student_guardians , dependent: :destroy
end
