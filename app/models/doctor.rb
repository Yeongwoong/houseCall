class Doctor < ApplicationRecord
  belongs_to :specialist

  has_many :cases

end
