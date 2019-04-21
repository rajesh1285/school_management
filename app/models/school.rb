class School < ApplicationRecord
  belongs_to :principal
  has_many :students
  has_many :teachers
end
