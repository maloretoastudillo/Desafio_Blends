class Wine < ApplicationRecord
    has_many :blends
    has_many :strains, through: :blends, dependent: :destroy

    accepts_nested_attributes_for   :blends

end
