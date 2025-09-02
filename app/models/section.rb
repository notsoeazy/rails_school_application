class Section < ApplicationRecord
  belongs_to :subject
  has_many :classlists, dependent: :destroy
  has_many :students, through: :classlists, dependent: :destroy
end
