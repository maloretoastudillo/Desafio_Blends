class Wine < ApplicationRecord
    has_many :blends, dependent: :destroy
    has_many :strains, through: :blends, dependent: :destroy

    accepts_nested_attributes_for   :blends

    validates :grade, numericality: { greater_than: 0, less_than:101 }

    def ordered
        Blend.includes(:strain).where(wine_id: self.id).order(:name).pluck(:name, :percentage)
    end

end
