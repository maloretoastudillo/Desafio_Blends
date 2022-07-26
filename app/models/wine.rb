class Wine < ApplicationRecord
    has_many :blends, dependent: :destroy
    has_many :strains, through: :blends, dependent: :destroy

    accepts_nested_attributes_for   :blends

    def ordered
        Blend.includes(:strain).where(wine_id: self.id).order(:name).pluck(:name, :percentage)
    end

end
