class Student < ApplicationRecord
  belongs_to :department
  has_many :classlists, dependent: :destroy
  has_many :sections, through: :classlists , dependent: :destroy

end
