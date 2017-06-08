class Doctor < ApplicationRecord
  has_many :patients, through: :consultations
  has_many :consultations, dependent: :destroy

  validates :name, presence: true
end
