class Teacher < ApplicationRecord
  belongs_to :department
  has_many :subjects, dependent: :destroy
end
