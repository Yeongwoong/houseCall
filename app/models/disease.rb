class Disease < ApplicationRecord
  has_many :patients

  has_many :cases

end
