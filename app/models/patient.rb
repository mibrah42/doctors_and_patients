class Patient < ApplicationRecord
  has_many :consultations
  has_many :doctors, through: :consultations

  validates :name, presence: true
end
