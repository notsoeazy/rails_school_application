class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :sections, dependent: :destroy
end
