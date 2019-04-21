class Principal < ApplicationRecord
  validates :name,:education,:sspecialization,:gender,:phone, presence: true
   has_many :schools
   # belongs_to :school
end
