class Blend < ApplicationRecord
  belongs_to :wine
  belongs_to :strain

  validates :percentage, numericality: {greater_than: 0, less_than: 101}
end
