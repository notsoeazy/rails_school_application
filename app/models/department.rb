class Department < ApplicationRecord
    has_many :students, dependent: :destroy
end
