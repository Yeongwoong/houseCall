class Prescription < ApplicationRecord
  belongs_to :medicine

  has_many :cases

end
