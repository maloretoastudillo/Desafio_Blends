class Wine < ApplicationRecord
    has_many :blends
    has_many :strains, through: :blends, dependent: :destroy
end
