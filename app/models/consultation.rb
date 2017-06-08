class Consultation < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  validates :description, presence: true
  validates :doctor, uniqueness: { scope: :patient }
end
