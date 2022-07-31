class Strain < ApplicationRecord
    has_many :blends, dependent: :destroy
    has_many :wines, through: :blends
end
